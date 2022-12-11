
@extends('website.master')
@section('title')
    Best Online Training System in Bangladesh
@endsection

@section('body')
    @php
        use Carbon\Carbon;
    @endphp
    <div class="carousel slide" data-bs-ride="carousel" id="slider" data-bs-interval="3000" >
        <div class="carousel-inner">
            @foreach($offer_status as $key=>$item)
                <div class="carousel-item {{$key== 0 ? 'active':''}}">
                    <img src="{{asset($item->offer_image)}}" alt="" class="w-100" style="height: 550px; object-fit: cover">
                    <div class="carousel-caption my-caption fw-semibold text-dark">
                        <h3><a href="{{route('training.detail',$item->id)}}" class="text-decoration-none text-dark">{{$item->title}}</a></h3>
                        <p>Offer Fee: {{$item->offer_fee}}</p>
                        <p>Offer Last Date: {{$item->offer_date}}</p>
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
            <div class="row bg-black rounded-1">
                <div class="col ">
                    <div class="rounded-1 card card-body text-center border-dark">
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
                                <h3><a href="{{route('training.detail',$recent_course->id)}}" class="text-decoration-none text-dark">{{$recent_course->title}}</a></h3>
                                <p class="mb-0">TK. {{$recent_course->fee}}</p>
                                <p >Starting Date: {{$recent_course->starting_date}}</p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="{{route('training.detail',$recent_course->id)}}" class="btn btn-success">Read More</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <section class="py-5 bg-light">
        <div class="container">
            <div class="row bg-info rounded-1">
                <div class="col ">
                    <div class="rounded-1 card card-body text-center border-dark">
                        <h3 class="">Popular Courses</h3>
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                @foreach($popular_courses as $popular_course)
                    <div class="col-md-4 mb-3">
                        <div class="card h-100">
                            <img src="{{asset($popular_course->image)}}" class="card-img" alt="" height="250">
                            <div class="card-body">
                                <h3><a href="{{route('training.detail',$popular_course->id)}}" class="text-decoration-none text-dark">{{$recent_course->title}}</a></h3>
                                <p class="mb-0">TK. {{$popular_course->fee}}</p>
                                <p >Starting Date: {{$popular_course->starting_date}}</p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="{{route('training.detail',$popular_course->id)}}" class="btn btn-success">Read More</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>


@endsection
