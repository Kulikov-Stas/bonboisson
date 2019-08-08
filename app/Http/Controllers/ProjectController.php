<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Project;

class ProjectController extends Controller
{
    /**
     * Route: Gets all projects and passes data to a view
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getProjects()
    {
        // Get all posts
        $projects = Project::orderBy('created_at', 'desc')
            ->paginate(12);

        $projects = $projects->translate(\App::getLocale());

        return view("/projects/list", [
            'projects' => $projects
        ]);
    }

    /**
     * Route: Gets a single project and passes data to a view
     *
     * @param $slug
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getProject(Request $request)
    {
        // The project
        $project = Project::where([
                ['slug', '=', $request->slug],
            ])->firstOrFail();

        $project = $project->translate(\App::getLocale());

        return view("/projects/single", [
            'project' => $project
        ]);
    }
}
