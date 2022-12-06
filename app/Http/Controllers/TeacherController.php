<?php

namespace App\Http\Controllers;

use App\Models\Teacher;
use Illuminate\Http\Request;

class TeacherController extends Controller
{
    public function index(){
        return view('admin.teacher.index');
    }

    public function create(Request $request){
//        return $request->all();
        Teacher::newTeacher($request);
        return redirect()->route('teacher')->with('message','successfully saved data');
    }

    public function manage(){
//        $teachers=Teacher::all();
        return view('admin.teacher.manage',[
            'teachers'=>Teacher::orderBy('id','desc')->get(),
        ]);
    }
    public function edit($id){
        $teacher=Teacher::find($id);
        return view('admin.teacher.edit',compact('teacher'));
    }
    public function update(Request $request,$id){
//        return $request->all()
        Teacher::updateTeacher($request,$id);
        return redirect()->route('teacher-manage')->with('message','successfully Update data');
    }
    public function delete($id){
        Teacher::deleteTeacher($id);
        return redirect()->route('teacher-manage')->with('message','successfully Delete data');
    }
}
