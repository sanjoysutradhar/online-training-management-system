@extends('website.master')
@section('title')
    All Training
@endsection

@section('body')



    <section class="py-5 bg-white">
        <div class="container">
            <div class="row bg-black rounded-1">
                <div class="col ">
                    <div class="rounded-1 card card-body text-center border-dark">
                        <h3 class="">All Training</h3>
                    </div>
                </div>
            </div>

                <div class="row mt-3">
                    @foreach($courses as $course)
                        <div class="col-md-4 mb-3">
                            <div class="card h-100">
                                <img src="{{asset($course->image)}}" class="card-img" alt="" height="250">
                                <div class="card-body">
                                    <h3><a href="{{route('training.detail',$course->id)}}" class="text-decoration-none text-dark">{{$course->title}}</a></h3>
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
            <div class="row">
                <div class="col">
                    <div class="float-end">{{$courses->links()}}</div>
                </div>
            </div>

        </div>
    </section>




@endsection
