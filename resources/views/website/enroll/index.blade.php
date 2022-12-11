@extends('website.master')
@section('title')
    Course Enroll Page
@endsection
@section('body')

    <section class="py-5 bg-white">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto shadow">
                    <div class="card border-0 shadow h-100">
                        <div class="bg-dark text-white text-center py-1 h3"> Course Enroll Page</div>
                        <div class="card-body">
                            <form action="{{route('training.new-enroll',$id)}}" method="post" >
                                @csrf
                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Full Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control mb-3" name="name" value="{{old('name')}}">

                                        <span class="text-danger">{{$errors->has('name')? $errors->first('name'):''}}</span>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Email Address</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control mb-3" name="email" value="{{old('email')}}">

                                        <span class="text-danger">{{$errors->has('email')? $errors->first('email'):''}}</span>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Mobile Number</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control mb-3" name="mobile" value="{{old('mobile')}}">

                                        <span class="text-danger">{{$errors->has('mobile')? $errors->first('mobile'):''}}</span>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Payment Type</label>
                                    <div class="col-md-9">
                                        <label class="me-4"><input type="radio" name="payment_type" value="cash" checked/> Cash On Delivery</label>
                                        <label class="mb-3"><input type="radio" name="payment_type" value="online"/> Online</label>

                                        <span class="text-danger">{{$errors->has('payment_type')? $errors->first('payment_type'):''}}</span>
                                    </div>
                                </div>


                                <div class="row mb-3">
                                    <label for="" class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-success w-100" name="" value="Enroll Now">
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

