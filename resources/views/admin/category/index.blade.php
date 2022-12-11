@extends('admin.master')
@section('body')

    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title mb-4">Add Category form</h4>
                <p class="text-center text-success">{{Session::get('message')}}</p>
                <form action="{{route('category.create')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group row mb-4">
                        <label for="horizontal-name-input" class="col-sm-3 col-form-label">Category name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control mb-3" id="horizontal-name-input" name="name" value="{{old('name')}}">
                            @error('name')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>

                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-image-input" class="col-sm-3 col-form-label">Image</label>
                        <div class="col-sm-9">
                            <input type="file" class="form-control-file mb-3" name="image" value="{{old('image')}}">

                            @error('image')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-description-input" class="col-sm-3 col-form-label">Status</label>
                        <div class="col-sm-9">
                            <input type="radio" name="status" class="mr-2" value="1"><label for="" class="mr-3">Published</label>
                            <input type="radio" name="status" class="mr-2" value="0"><label for="" class="mr-3">Unpublished</label>
                            @error('status')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="horizontal-description-input" class="col-sm-3 col-form-label">Description</label>
                        <div class="col-sm-9">
                            <textarea name="description" id="" cols="30" rows="5" class="form-control mb-3" id="horizontal-description-input">{{old('description')}}</textarea>
                            @error('description')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>

                    </div>

                    <div class="form-group row justify-content-end">
                        <div class="col-sm-9">
                            <div>
                                <button type="submit" class="btn btn-primary w-md">Create new Category</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

