<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class CategoryController extends Controller
{
    public function index(){
        return view('admin.category.index');
    }
    public function create(Request $request){
        $request->validate([
            'name'=>'required|unique:categories',
//            "file('image')"=>'nullable|mimes:png,jpg,jpeg',
            'image' => 'nullable|image|mimes:jpeg,jpg,png,gif',
            'description'=>'nullable',
        ]);
//        return $request->all();
        Category::createCategory($request);
        return redirect('/category/add')->with('message','Category saved successfully');
    }
    public function manage(){
        return view('admin.category.manage',['categories'=>Category::where('status',1)->orderBy('id','DESC')->get()]);
    }
    public function edit($id){
        return view('admin.category.edit',['category'=>Category::find($id)]);
    }
    public function update(Request $request,$id){
        $request->validate([
//            'name'=>'required','unique:categories,name',Rule::unique('categories')->ignore(Category::find($id)),
            'name'=>Rule::unique('categories')->ignore(Category::find($id)),
//            'name'=>'required|unique:categories,name'.$category->id,
//            'name'=>'required','unique:categories,name'.$category->id,
//            "file('image')"=>'nullable|mimes:png,jpg,jpeg',
            'image' => 'nullable|image|mimes:jpeg,jpg,png,gif',
            'description'=>'nullable',
        ]);
//        $name = Validator::make($request->all(), [
//            'name'=>'required','unique:categories',Rule::unique('categories')->ignore(Category::find($id)),
//        ]);
//
//        if ($name->fails())
//        {
//            return redirect()->back()->withErrors($name->errors());
//        }
//        return 'hi';
        Category::updateCategory($request,$id);
        return redirect('/category/manage')->with('message','Category Updated Successfully');
    }
    public function delete($id){
        Category::deleteCategory($id);
        return redirect('/category/manage')->with('message','Category Deleted Successfully');

    }
}
