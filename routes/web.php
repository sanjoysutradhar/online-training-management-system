<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\TeacherAuthController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\AdminCourseController;

Route::get('/', [HomeController::class,'index'])->name('home');
Route::get('/about-us', [HomeController::class,'about'])->name('about');
Route::get('/training-category', [HomeController::class,'categoryTraining'])->name('training.category');
Route::get('/all-training', [HomeController::class,'allTraining'])->name('training.all');
Route::get('/training-detail/{id}', [HomeController::class,'trainingDetail'])->name('training.detail');
Route::get('/contact-us', [HomeController::class,'contact'])->name('contact');


Route::get('/login-registration', [HomeController::class,'loginRegistration'])->name('login-registration');

Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () {
    Route::get('/dashboard',[DashboardController::class,'index'])->name('dashboard');
    //Admin section
    Route::get('/teacher', [TeacherController::class,'index'])->name('teacher');
    Route::post('/create-teacher', [TeacherController::class,'create'])->name('create-teacher');
    Route::get('/teacher-edit/{id}', [TeacherController::class,'edit'])->name('teacher.edit');
    Route::post('/create-update/{id}', [TeacherController::class,'update'])->name('teacher.update');
    Route::get('/create-delete/{id}', [TeacherController::class,'delete'])->name('teacher.delete');
    Route::get('/teacher-manage', [TeacherController::class,'manage'])->name('teacher-manage');


    //category
    Route::get('/category/add',[CategoryController::class,'index'])->name('category.add');
    Route::post('/category/create',[CategoryController::class,'create'])->name('category.create');
    Route::get('/category/manage',[CategoryController::class,'manage'])->name('category.manage');
    Route::get('/category/edit/{id}',[CategoryController::class,'edit'])->name('category.edit');
    Route::post('/category/update/{id}',[CategoryController::class,'update'])->name('category.update');
    Route::get('/category/delete/{id}',[CategoryController::class,'delete'])->name('category.delete');

    //Admin manage course
    Route::get('/manage-course',[AdminCourseController::class,'index'])->name('admin.manage-course');
    Route::get('/course-detail/{id}',[AdminCourseController::class,'detail'])->name('admin.course-detail');
    Route::get('/update-course-status/{id}',[AdminCourseController::class,'updateStatus'])->name('admin.update-course-status');
    Route::get('/update-course-offer-status/{id}',[AdminCourseController::class,'updateOfferStatus'])->name('admin.update-course-offer-status');
    Route::get('/delete-course/{id}',[AdminCourseController::class,'delete'])->name('admin.course-delete');

    Route::post('admin/update-course-offer/{id}',[AdminCourseController::class,'updateCourseOffer'])->name('admin.update-course-offer');


});

//Teacher Auth Controller
Route::get('/teacher/login',[TeacherAuthController::class,'index'])->name('teacher.login');
Route::post('/teacher/login',[TeacherAuthController::class,'login'])->name('teacher.login');
Route::post('/teacher/logout',[TeacherAuthController::class,'logout'])->name('teacher.logout');
Route::get('/teacher/dashboard',[TeacherAuthController::class,'dashboard'])->name('teacher.dashboard');

//course
Route::get('/course/add',[CourseController::class,'index'])->name('course.add');
Route::post('/course/create',[CourseController::class,'create'])->name('course.create');
Route::get('/course/manage',[CourseController::class,'manage'])->name('course.manage');
Route::get('/course/edit/{id}',[CourseController::class,'edit'])->name('course.edit');
Route::post('/course/update/{id}',[CourseController::class,'update'])->name('course.update');
Route::get('/course/delete/{id}',[CourseController::class,'delete'])->name('course.delete');

