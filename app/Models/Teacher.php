<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    use HasFactory;
    private static $imageName,$directory,$image,$imageExtension;
    private static $name,$email,$password,$address,$moblie,$status,$teacher;

    public static function getImageUrl($request){
        self::$image=$request->file('image');
        self::$imageExtension= self::$image->getClientOriginalExtension();
        self::$imageName=time().'.'.self::$imageExtension;
        self::$directory='admin/images/teacher-images/';
        self::$image->move(self::$directory,self::$imageName);
        return self::$directory.self::$imageName;
    }

    public static function newTeacher($request){
        self::saveBasicInfo(new Teacher(), $request, self::getImageUrl($request));
    }

    public static function updateTeacher($request,$id){
        self::$teacher=Teacher::find($id);
        if($request->file('image')){
            if(file_exists(self::$teacher->image)){
                unlink(self::$teacher->image);
            }
            self::$image= self::getImageUrl($request);
        }
        else{
            self::$image= self::$teacher->image;
        }

        self::saveBasicInfo(self::$teacher, $request, self::$image);
    }

    public static function saveBasicInfo($teacher,$request,$getImage){
        $teacher->name=$request->name;
        $teacher->email=$request->email;
        if($request->password){
            $teacher->password=bcrypt($request->password);
        }
        $teacher->mobile=$request->mobile;
        $teacher->address=$request->address;
        $teacher->image=$getImage;
        $teacher->save();
    }
    public static function deleteTeacher($id){
        self::$teacher=Teacher::find($id);
        if(self::$teacher->image){
            unlink(self::$teacher->image);
        }
        self::$teacher->delete();
    }

}
