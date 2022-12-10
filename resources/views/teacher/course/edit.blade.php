@extends('teacher.master')
@section('body')

    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title mb-4">Edit Course form </h4>
                <p class="text-center text-success">{{Session::get('message')}}</p>
                <form action="{{route('course.update',$course->id)}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Course Category</label>
                        <div class="col-sm-9">
                            <select name="category_id" id="" class="form-control">
                                <option selected disabled>-Select Course Category-</option>
                                @foreach($categories as $category)
                                    <option value="{{$category->id}}" {{$category->id==$course->category_id ?'selected':''}}>{{$category->name}}</option>
                                @endforeach
                            </select>
                            @error('category_id')
                            <div class="alert alert-danger mt-3">{{ "category required" }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Course Title</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="horizontal-firstname-input" value="{{$course->title}}" name="title">
                            @error('title')
                            <div class="alert alert-danger mt-3">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Course Objective</label>
                        <div class="col-sm-9">
                            <textarea name="objective" class="form-control" id="" cols="30" rows="5">{{$course->objective}}</textarea>
                            @error('objective')
                            <div class="alert alert-danger mt-3">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-description-input" class="col-sm-3 col-form-label">Course Description</label>
                        <div class="col-sm-9">
                            <textarea name="description" class="form-control summernote" id="" cols="30" rows="5">{{$course->description}}</textarea>
                            @error('description')
                            <div class="alert alert-danger mt-3">{{ $message }}</div>
                            @enderror
                        </div>

                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-password-input" class="col-sm-3 col-form-label">Starting Date</label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control" id="horizontal-starting_date-input" name="starting_date" value="{{$course->starting_date}}">
                            @error('starting_date')
                            <div class="alert alert-danger mt-3">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-mobile-input" class="col-sm-3 col-form-label">Course Fee</label>
                        <div class="col-sm-9">
                            <input type="number" class="form-control" id="horizontal-mobile-input" name="fee" value="{{$course->fee}}">
                            @error('fee')
                            <div class="alert alert-danger mt-3">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-image-input" class="col-sm-3 col-form-label">Image</label>
                        <div class="col-sm-9">
                            <input type="file" class="form-control-file mb-3" name="image" value="{{old('image')}}">
                            <img src="{{asset('/')}}{{$course->image}}" alt="{{$course->category->name}}" width="250">
                            @error('image')
                            <div class="alert alert-danger mt-3">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row justify-content-end">
                        <div class="col-sm-9">
                            <div>
                                <button type="submit" class="btn btn-primary w-md">Create New Course</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
