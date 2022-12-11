@extends('website.master')
@section('title')
    Best Online Training System in Bangladesh
@endsection

@section('body')
    <section class="py-5 bg-white">
        <div class="container">
            <div class="row mb-3">
                <div class="card border-0">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="{{asset($course->image)}}" alt="{{$course->category->name}}" class="card-img" height="300">
                        </div>
                        <div class="col-md-6">
                               <div class="card-body">
                                   <h3>{{$course->title}}</h3>
                                   <p>Teacher Name: <span class="text-uppercase">{{$course->teacher->name}}</span></p>
                                   <p>Course Price Tk: {{$course->title}}</p>
                                   <p>Starts at: {{$course->starting_date}}</p>
                               </div>
                                <div class="card-footer bg-white  border-0 text-center">
                                    <a href="{{route('training.enroll',$course->id)}}" class="btn btn-outline-info px-5">Enroll</a>
                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-3"> <div class="col-md-12">
                    <div class="card border-0 shadow h-100">
                        <div class="bg-dark text-white text-center py-1 display-6">Course Objective</div>
                        <div class="card-body">
                            <p>{{$course->objective}}</p>
                        </div>
                    </div>
            </div>

            <div class="row mt-3">
                <div class="col-md-12">
                    <div class="card border-0 shadow h-100">
                        <div class="bg-dark text-white text-center py-1 display-6">Training Detail</div>
                        <div class="card-body">
                            <p>{!! $course->description !!}</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>




@endsection
