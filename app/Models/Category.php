<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    private static $image,$imageName,$directory,$imageUrl,$imageExtension;
    private static $category;

    public static function getImageUrl($request){
        if($request->file('image')){
            self::$image=$request->file('image');
            self::$imageExtension=self::$image->getClientOriginalExtension();
            self::$imageName=time().'.'.self::$imageExtension;
            self::$directory='admin/images/category-images/';
            self::$image->move(self::$directory,self::$imageName);
            return self::$directory.self::$imageName;
        }
        else{
            return "";
        }

    }

    public static function createCategory($request){
        self::saveBasicInfo(new Category(),$request,self::getImageUrl($request));
    }

    public static function saveBasicInfo($category,$request,$getImage){
        $category->name=$request->name;
        $category->description=$request->description;
        $category->status=$request->status;
        $category->image=$getImage;
        $category->save();
    }

    public static function updateCategory($request,$id){
        self::$category=Category::find($id);
        if ($request->file('image')){
            if (file_exists(self::$category->image)){
                unlink(self::$category->image);
            }
            self::$imageUrl=self::getImageUrl($request);
        }
        else{
            self::$imageUrl=self::$category->image;
        }

        self::saveBasicInfo(self::$category,$request,self::$imageUrl);
    }

    public static function deleteCategory($id){
        self::$category=Category::find($id);
        if(file_exists(self::$category->image)){
            unlink(self::$category->image);
        }
        self::$category->delete();
    }
}
