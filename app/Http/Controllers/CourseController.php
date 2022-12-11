<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Course;
use Illuminate\Http\Request;
use Session;

class CourseController extends Controller
{
    public function index(){
        return view('teacher.course.index',['categories'=>Category::where('status',1)->get()]);
    }

    public function create(Request $request){
        $request->validate([
            'category_id'=>'required',
            'title'=>'required|string',
            'objective'=>'required|string',
            'description'=>'required|string',
            'starting_date'=>'required',
            'fee'=>'required',
            'image' => 'required|image|mimes:jpeg,webp,jpg,png',
        ]);
        Course::createCourse($request);
        return redirect('/course/add')->with('message','Course saved successfully');
    }

    public function manage(){
        return view('teacher.course.manage',['courses'=>Course::where(['teacher_id'=>Session::get('teacher_id')])->orderBy('id','DESC')->get()]);
    }

    public function edit($id){
        return view('teacher.course.edit',[
            'categories'=>Category::where('status',1)->get(),
            'course'=>Course::find($id)]);
    }
    public function update(Request $request, $id){
        $request->validate([
            'category_id'=>'required',
            'title'=>'required|string',
            'objective'=>'required|string',
            'description'=>'required|string',
            'starting_date'=>'required',
            'image' => 'nullable|image|mimes:jpeg,jpg,png,gif',
            'fee'=>'required',
        ]);
        Course::updateCourse($request,$id);
        return redirect('/course/manage')->with('message','Course Updated successfully');
    }

    public function delete($id){
        Course::deleteCourse($id);
        return redirect('/course/manage')->with('message','Course Deleted successfully');
    }
}
