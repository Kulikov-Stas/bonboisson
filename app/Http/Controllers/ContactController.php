<?php

namespace App\Http\Controllers;

use Mail;
use Illuminate\Http\Request;
use App\Department;
use App\Mail\ContactMail;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $departments = Department::all();
        $contact_info = array();
        $contact_info['departments'] = $departments;
        return view("/contacts/single", $contact_info);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'department' => 'required',
            'phone' => 'required',
            'privacy' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ]);

        $requestData = $request->all();
        $requestData['to'] = $requestData['department'];
        $requestData['subject'] = 'Новое сообщение с сайта Bon Boisson...';

        Mail::send(new ContactMail($requestData));

        return back()->with('success', 'Ваш запрос успешно отправлен');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
