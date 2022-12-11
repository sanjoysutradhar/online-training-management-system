<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Course;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class AdminCourseController extends Controller
{
    public function index(){
        $courses=DB::table('courses')
            ->join('categories','courses.category_id','=','categories.id')
            ->select('courses.*', 'categories.name','categories.id as cat_id')
//            ->orderBy('courses.id','DESC')->get();
            ->orderBy('courses.id','DESC')->get();
//        return view('admin.course.index',['courses'=>Course::orderBy('id','DESC')->get()]);
        return view('admin.course.index',compact('courses'));
    }

    public function detail($id){
        return view('admin.course.detail',['course'=>Course::find($id)]);
    }
    public function updateStatus($id){
        return redirect('/manage-course')->with('message',Course::updateCourseStatus($id));
    }
    public function updateOfferStatus($id){
        return view('admin.course.offer-update',['course'=>Course::find($id)]);
//        return redirect('/manage-course')->with('message',Course::updateOfferStatus($id));
    }

    public  function updateCourseOffer(Request $request,$id){
        $request->validate([
            'image' => 'nullable|image|mimes:jpeg,jpg,png,gif',
        ]);
//        return $request->all();
        Course::updateCourseOffer($request,$id);
        return redirect('/manage-course')->with('message','Course offer Updated Successfully');
    }
    public function delete($id){
     Course::deleteCourse($id);
     return redirect('/manage-course')->with('message','Course Deleted Successfully');
    }

}
