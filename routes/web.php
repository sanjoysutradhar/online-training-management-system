<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;


Route::get('/', [HomeController::class,'index'])->name('home');
Route::get('/about-us', [HomeController::class,'about'])->name('about');
Route::get('/training-category', [HomeController::class,'categoryTraining'])->name('training.category');
Route::get('/all-training', [HomeController::class,'allTraining'])->name('training.all');
Route::get('/training-detail', [HomeController::class,'trainingDetail'])->name('training.detail');
Route::get('/contact-us', [HomeController::class,'contact'])->name('contact');

Route::get('/login-registration', [HomeController::class,'loginRegistration'])->name('login-registration');
