@extends('website.master')
@section('title')
    Training Category
@endsection

@section('body')
    <section class="py-5 bg-white">
        <div class="container">
            <div class="row bg-dark rounded-1 border-dark">
                <div class="col">
                    <div class="rounded-1 card card-body text-center border-dark">
                        <h3 class="">{{isset($courses[0]->category) ? $courses[0]->category->name.'Training Courses' :'No Course Available'}}</h3>
                    </div>
                </div>
            </div>

            <div class="row mt-3 justify-content-center">
                @foreach($courses as $course)
                    <div class="col-md-4 mb-3">
                        <div class="card h-100">
                            <img src="{{asset($course->image)}}" class="card-img" height="200" alt="">
                            <div class="card-body">
                                <h4><a href="{{route('training.detail',$course->id)}}"></a>{{$course->title}}</h4>
                                <p class="mb-0">TK. {{$course->fee}}</p>
                                <p >Starting Date: {{$course->starting_date}}</p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="{{route('training.detail',$course->id)}}" class="btn btn-success">Read More</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>




@endsection
