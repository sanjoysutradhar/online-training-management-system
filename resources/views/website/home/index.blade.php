
@extends('website.master')
@section('title')
    Best Online Training System in Bangladesh
@endsection

@section('body')
    @php
        use Carbon\Carbon;
    @endphp
    <div class="carousel slide" data-bs-ride="carousel" id="slider" data-bs-interval="3000" >
        <div class="carousel-inner" >
            @foreach($offer_status as $key=>$item)
                <div class="carousel-item {{$key== 0 ? 'active':''}}">
                    <img src="{{asset($item->offer_image)}}" alt="" class="w-100" style="height: 550px; object-fit: cover">
                    <div class="carousel-caption fw-semibold text-dark">
                        <h3>{{$item->title}}</h3>
                        <p>Offer {{$item->offer_fee}}</p>
                        <p>{{$item->offer_date->format('d.m.y')}}</p>
{{--                        <p>{{Carbon::createFromFormat('m-d-Y', $item->offer_date)->format('d/m/Y')}}</p>--}}
                        <a href="{{route('training.detail',$item->id)}}" class="btn btn-dark px-5">Read more</a>
                    </div>
                </div>
            @endforeach
        </div>

        <a href="#slider"  class="carousel-control-prev" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>

        <a href="#slider"  class="carousel-control-next" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </div>

    <section class="py-5 bg-white">
        <div class="container">
            <div class="row bg-danger">
                <div class="col ">
                    <div class="rounded-0 card card-body text-center border-0">
                        <h3 class="">Recent Published Course</h3>
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                @foreach($recent_courses as $recent_course)
                    <div class="col-md-4 mb-3">
                        <div class="card h-100">
                            <img src="{{asset($recent_course->image)}}" class="card-img" alt="" height="250">
                            <div class="card-body">
                                <h4>{{$recent_course->title}}</h4>
                                <p class="mb-0">TK. {{$recent_course->fee}}</p>
                                <p >Starting Date: {{$recent_course->starting_date}}</p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="{{route('training.detail',$item->id)}}" class="btn btn-success">Read More</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <section class="py-5 bg-light">
        <div class="container">
            <div class="row bg-danger">
                <div class="col ">
                    <div class="rounded-0 card card-body text-center border-0">
                        <h3 class="text-center">Popular Courses</h3>
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <img src="{{asset('/')}}website/images/team-2.jpg" alt="">
                        <div class="card-body">
                            <h4>PHP With Laravel Framework</h4>
                            <p class="mb-0">TK. 25000</p>
                            <p >Starting Date: 10-01-2023</p>
                            <hr/>
{{--                            <a href="{{route('training.detail')}}" class="btn btn-success">Read More</a>--}}
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <img src="{{asset('/')}}website/images/team-2.jpg" alt="">
                        <div class="card-body">
                            <h4>PHP With Laravel Framework</h4>
                            <p class="mb-0">TK. 25000</p>
                            <p >Starting Date: 10-01-2023</p>
                            <hr/>
                            <a href="" class="btn btn-success">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <img src="{{asset('/')}}website/images/team-2.jpg" alt="">
                        <div class="card-body">
                            <h4>PHP With Laravel Framework</h4>
                            <p class="mb-0">TK. 25000</p>
                            <p >Starting Date: 10-01-2023</p>
                            <hr/>
                            <a href="" class="btn btn-success">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection
