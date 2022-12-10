<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Session;

class Course extends Model
{
    use HasFactory;

    private static $image,$imageName,$directory,$imageUrl,$imageExtension;
    private static $course;

    public static function getImageUrl($request){
        if($request->file('image')){
            self::$image=$request->file('image');
            self::$imageExtension=self::$image->getClientOriginalExtension();
            self::$imageName=time().'.'.self::$imageExtension;
            self::$directory='admin/images/course-images/';
            self::$image->move(self::$directory,self::$imageName);
            return self::$directory.self::$imageName;
        }
        else{
            return "";
        }

    }

    public static function createCourse($request){
        self::saveBasicInfo(new Course(),$request,self::getImageUrl($request));
    }

    public static function saveBasicInfo($course,$request,$getImage){
        $course->category_id=$request->category_id;
        $course->teacher_id=Session::get('teacher_id');
        $course->title=$request->title;
        $course->objective=$request->objective;
        $course->description=$request->description;
        $course->starting_date=$request->starting_date;
        $course->fee=$request->fee;
        $course->image=$getImage;
        $course->save();
    }

    public static function updateCourse($request,$id){
        self::$course=Course::find($id);
        if ($request->file('image')){
            if (file_exists(self::$course->image)){
                unlink(self::$course->image);
            }
            self::$imageUrl=self::getImageUrl($request);
        }
        else{
            self::$imageUrl=self::$course->image;
        }

        self::saveBasicInfo(self::$course,$request,self::$imageUrl);
    }

    public static function deleteCourse($id){
        self::$course=Course::find($id);
        if(file_exists(self::$course->image)){
            unlink(self::$course->image);
        }
        self::$course->delete();
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }
}
