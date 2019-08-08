<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\History;

class HistoryController extends Controller
{
    /**
     * Route: Gets history and passes data to a view
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getHistory()
    {
        // Get all posts
        $history = History::with('translations')
            ->orderBy('year', 'DESC')
            ->get();

        return view("/history/list", [
            'history' => $history
        ]);
    }
}
