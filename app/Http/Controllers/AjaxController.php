<?php

namespace App\Http\Controllers;

use App;
use App\Project;
use App\Vacancy;
use App\City;
use App\Department;
use Illuminate\Http\Request;
use Pvtl\VoyagerBlog\BlogPost;
use Illuminate\Support\Carbon;

class AjaxController extends Controller
{
	protected $viewPath = 'voyager-frontend';

    public function getData(Request $request)
    {
    	$type = $request->type;
    	$lang = $request->lang;
    	$offset = $request->offset;
    	$city_id = $request->city_id;

    	if(!isset($type) || empty($type)) {
    		return response()->json(['message' => 'Bad request (something wrong with URL or parameters)'], 400);
    	}

    	if(!isset($lang) || empty($lang)) {
    		$lang = App::getLocale();
    	}

    	switch ($type) {
    		case 'news':
    			$posts = $this->getPosts($offset);
                $posts = $posts->translate(\App::getLocale());
    			return view("/news/ajax", [
		            'posts' => $posts,
		        ]);
    			break;
    		case 'projects':
    			$projects = $this->getProjects($offset);
                $projects = $projects->translate(\App::getLocale());
    			return view("/projects/ajax", [
		            'projects' => $projects
		        ]);
    			break;
    		case 'vacancies':
    			$vacancies = $this->getVacancies($offset, $city_id);
                $vacancies = $vacancies->translate(\App::getLocale());
    			return view("/vacancies/ajax", [
		            'vacancies' => $vacancies
		        ]);
    			break;
    		
    		default:
    			# code...
    			break;
    	}
    }

    /**
     * Route: Gets all posts and passes data to a view
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getPosts($offset = 0)
    {
    	// Get featured post
        $featuredPost = BlogPost::where([
                ['status', '=', 'PUBLISHED'],
                ['featured', '=', '1'],
            ])->whereDate('published_date', '<=', Carbon::now())
            ->orderBy('published_date', 'desc')
            ->first();
        $featuredPostId = $featuredPost ? $featuredPost->id : 0;

        // Get all posts
        $posts = BlogPost::where([
                ['status', '=', 'PUBLISHED'],
                ['id', '!=', $featuredPostId],
            ])->whereDate('published_date', '<=', Carbon::now())
            ->orderBy('published_date', 'desc')
            ->offset($offset)
            ->limit(10)
            ->get();

		return $posts;
    }

     /**
     * Route: Gets all projects and passes data to a view
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getProjects($offset = 0)
    {
        // Get all posts
        $projects = Project::orderBy('created_at', 'desc')
            ->offset($offset)
            ->limit(10)
            ->get();

        $projects = $projects->translate(\App::getLocale());

        return $projects;
    }

    /**
     * Route: Gets all vacancies and passes data to a view
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getVacancies($offset = 0, $city_id = 0)
    {
        $data = array();

        if($city_id) {
            $vacancies = Vacancy::where('city_id', $city_id)->orderBy('created_at', 'desc')
            ->offset($offset)
            ->limit(10)
            ->get();
        } else {
            $vacancies = Vacancy::orderBy('created_at', 'desc')
            ->offset($offset)
            ->limit(10)
            ->get();
        }

        // Get all vacancies
        $data['vacancies'] = $vacancies;

        return $vacancies;
    }
}
