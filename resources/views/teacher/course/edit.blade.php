@extends('admin.master')
@section('body')

    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title mb-4">Edit Teacher form </h4>
                <form action="{{route('teacher.update',$teacher->id)}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Teacher name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="horizontal-firstname-input" name="name" value="{{$teacher->name}}">
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Email</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="horizontal-email-input" name="email" value="{{$teacher->email}}">
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-password-input" class="col-sm-3 col-form-label">Password</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="horizontal-password-input" name="password" value="">
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-mobile-input" class="col-sm-3 col-form-label">Mobile Number</label>
                        <div class="col-sm-9">
                            <input type="number" class="form-control" id="horizontal-mobile-input" name="mobile" value="{{$teacher->mobile}}">
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-image-input" class="col-sm-3 col-form-label">Image</label>
                        <div class="col-sm-9">
                            <input type="file" class="form-control-file mb-3" name="image" >

                            <img src="{{asset('/')}}{{$teacher->image}}" alt="" width="250">
                        </div>

                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-address-input" class="col-sm-3 col-form-label">Address</label>
                        <div class="col-sm-9">
                            <textarea id="" cols="30" rows="5" class="form-control" id="horizontal-address-input" name="address">{{$teacher->address}}</textarea>
                        </div>
                    </div>

                    <div class="form-group row justify-content-end">
                        <div class="col-sm-9">

                            <div>
                                <button type="submit" class="btn btn-primary w-md">update</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
