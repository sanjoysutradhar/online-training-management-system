@extends('admin.master')
@section('body')

    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title mb-4">Course Offer Update form</h4>
                <p class="text-center text-success">{{Session::get('message')}}</p>
                <form action="{{route('admin.update-course-offer',$course->id)}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group row mb-4">
                        <label for="" class="col-sm-3 col-form-label">Course Title</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control mb-3" value="{{$course->title}}" readonly>
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="" class="col-sm-3 col-form-label">Actual Fee</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control mb-3"  value="{{$course->fee}}" readonly>
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="" class="col-sm-3 col-form-label">Offer Status</label>
                        <div class="col-sm-9">
                            <select name="offer_status" class="form-control mb-3" id="">
                                <option value="0" {{$course->offer_status==0?'selected':''}}>Unpublished</option>
                                <option value="1" {{$course->offer_status==1?'selected':''}}>Published</option>
                            </select>
                        </div>
                    </div>



                    <div class="form-group row mb-4">
                        <label for="horizontal-image-input" class="col-sm-3 col-form-label">Offer Image</label>
                        <div class="col-sm-9">
                            <input type="file" class="form-control-file mb-3" name="image" value="{{old('image')}}">
                            @error('image')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="" class="col-sm-3 col-form-label">Offer Fee</label>
                        <div class="col-sm-9">
                            <input type="number" class="form-control mb-3" name="offer_fee"  value="{{$course->offer_fee}}">
                        </div>
                    </div>

                    <div class="form-group row mb-4">
                        <label for="" class="col-sm-3 col-form-label">Offer Date</label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control mb-3" name="offer_date"  value="{{$course->offer_date}}">
                        </div>
                    </div>

                    <div class="form-group row justify-content-end">
                        <div class="col-sm-9">
                            <div>
                                <button type="submit" class="btn btn-primary w-md">Update Course Offer</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection


