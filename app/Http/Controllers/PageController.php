<?php

//namespace Pvtl\VoyagerPageBlocks\Http\Controllers;
namespace App\Http\Controllers;

use Pvtl\VoyagerPageBlocks\Page;
use Illuminate\Support\Facades\View;
use Pvtl\VoyagerPageBlocks\Traits\Blocks;
use Illuminate\Http\Request;

//class PageController extends \Pvtl\VoyagerFrontend\Http\Controllers\PageController
class PageController extends Controller
{
    use Blocks;

     /**
     * This is the module's view path that can be overriden
     */
    protected $viewPath = 'voyager-frontend';

    /**
     * Fetch all pages and their associated blocks
     *
     * @param string $slug
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getPage(Request $request)
    {
        if(!empty($request->slug)) {
            $slug = $request->slug;
        } else{
            $slug = 'home';
        }

        $page = Page::where('slug', '=', $slug)->firstOrFail();
        $blocks = $page->blocks()
            ->where('is_hidden', '=', '0')
            ->orderBy('order', 'asc')
            ->get()
            ->map(function ($block) {
                return (object)[
                    'id' => $block->id,
                    'page_id' => $block->page_id,
                    'updated_at' => $block->updated_at,
                    'cache_ttl' => $block->cache_ttl,
                    'template' => $block->template()->template,
                    'data' => $block->cachedData,
                    'path' => $block->path,
                    'type' => $block->type,
                ];
            });

        // Override standard body content, with page block content
        $page['body'] = view('voyager-page-blocks::default', [
            'page' => $page,
            'blocks' => $this->prepareEachBlock($blocks),
        ]);

        // Check that the page Layout and its View exists
        if (empty($page->layout)) {
            $page->layout = 'default';
        }

        if (!View::exists("{$this->viewPath}::layouts.{$page->layout}")) {
            $page->layout = 'default';
        }

        // Return the full page
        return view("{$this->viewPath}::modules.pages.default", [
            'page' => $page,
            'layout' => $page->layout,
        ]);
    }
}
