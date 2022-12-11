<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category;
use App\Models\Teacher;
use Session;

class Course extends Model
{
    use HasFactory;

    private static $image,$imageName,$directory,$imageUrl,$imageExtension;
    private static $course,$message;

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

    public static function updateCourseStatus($id){
        self::$course=Course::find($id);
        if(self::$course->status==1){
            self::$course->status=0;
            self::$message="Course status info unpublished successfully";
        }
        else{
        self::$course->status=1;
        self::$message="Course status info published successfully";
        }
        self::$course->save();
        return self::$message;
    }
    public static function updateOfferStatus($id){
        self::$course=Course::find($id);
        if(self::$course->offer_status==1){
            self::$course->offer_status=0;
            self::$message="Offer status info unpublished successfully";
        }
        else{
            self::$course->offer_status=1;
            self::$message="Offer status info published successfully";
        }
        self::$course->save();
        return self::$message;
    }
    public static function updateCourseOffer($request,$id){
        self::$course=Course::find($id);
        if(file_exists(self::$course->offer_image)){
            unlink(self::$course->offer_image);
        }
        self::$course->offer_status=$request->offer_status;
        self::$course->offer_fee=$request->offer_fee;
        self::$course->offer_date=$request->offer_date;
        self::$course->offer_image=self::getImageUrl($request);
        self::$course->save();
    }
    public static function deleteCourse($id){
        self::$course=Course::find($id);
        if(file_exists(self::$course->image)){
            unlink(self::$course->image);
        }
        self::$course->delete();
    }
    public static function hitCount($id){
        self::$course=Course::find($id);
        self::$course->hit_count=self::$course->hit_count+1;
        self::$course->save();
    }
    public function category(){
        return $this->belongsTo(Category::class);
    }
    public function teacher(){
        return $this->belongsTo(Teacher::class);
    }
}
