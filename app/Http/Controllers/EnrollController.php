<?php

namespace App\Http\Controllers;

use App\Models\Enroll;
use App\Models\Student;
use Illuminate\Http\Request;
use Session;

class EnrollController extends Controller
{

    private $student,$enroll;
    public function index($courseId){
        if(Session::get('student_id')){
            $this->student=Student::find(Session::get('student_id'));
            return view('website.enroll.index',[
                'id'=>$courseId,
                'student'=>$this->student
                ]);
        }else{
            return view('website.enroll.index',['id'=>$courseId]);
        }

    }
    public function newEnroll(Request $request,$courseId){
        if(Session::get('student_id')){
            $this->student=Student::find(Session::get('student_id'));
        }
        else{
            $this->validate($request,[
                'name'=>'required|regex:/^[a-zA-Z- ]+$/',
                'email'=>'required|unique:students,email',
                'mobile'=>'required|min:8|unique:students,mobile',
                'payment_type'=>'required',
            ],[
                'name.required'=>'khali raikhen na vai kicu den',
                'name.regex'=>'number diyen na apa',
                'email.required'=>'vai eta ki korlen',
                'email.unique'=>'Masud tumi ki kono din valo hoba na',
            ]);
            $this->student=Student::newStudent($request);
        }

        $this->enroll=Enroll::newEnroll($request,$this->student->id,$courseId);
        Session::put('student_id',$this->student->id);
        Session::put('student_name',$this->student->name);
        return redirect('/training-complete-enroll/'.$this->enroll->id);
    }

    public function enrollComplete($enrollId){
        return view('website.enroll.complete-enroll',['enroll'=>Enroll::find($enrollId)]);
    }

}
