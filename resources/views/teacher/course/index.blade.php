@extends('teacher.master')
@section('body')

    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title mb-4">Add Course form </h4>
                <p class="text-center text-success">{{Session::get('message')}}</p>
                <form action="{{route('course.create')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Course Title</label>
                        <div class="col-sm-9">
                            <select name="" id="" class="form-control">
                                <option>-Select Course Category-</option>
                                <option value="">--Category Name--</option>
                                <option value="">--Category Name--</option>
                                <option value="">--Category Name--</option>
                                <option value="">--Category Name--</option>

                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Course Title</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="horizontal-firstname-input" name="title">
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Course Objective</label>
                        <div class="col-sm-9">
                            <textarea name="objective" class="form-control" id="" cols="30" rows="5"></textarea>
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-description-input" class="col-sm-3 col-form-label">Course Description</label>
                        <div class="col-sm-9">
                            <textarea name="description" class="form-control summernote" id="" cols="30" rows="5"></textarea>
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-password-input" class="col-sm-3 col-form-label">Starting Date</label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control" id="horizontal-starting_date-input" name="starting_date">
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-mobile-input" class="col-sm-3 col-form-label">Course Fee</label>
                        <div class="col-sm-9">
                            <input type="number" class="form-control" id="horizontal-mobile-input" name="fee">
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-image-input" class="col-sm-3 col-form-label">Image</label>
                        <div class="col-sm-9">
                            <input type="file" class="form-control-file" name="image">
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
