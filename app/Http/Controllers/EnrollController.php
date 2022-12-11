<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EnrollController extends Controller
{
    public function index($id){
        return view('website.enroll.index',['id'=>$id]);
    }
    public function newEnroll(Request $request,$id){
        $this->validate($request,[
            'name'=>'required|alpha',
            'email'=>'required',
            'mobile'=>'required',
            'payment_type'=>'required',
        ],[
            'name.required'=>'khali raikhen na vai kicu den',
            'name.alpha'=>'number diyen na apa',
        ]);
        return $request->all();

    }

}
