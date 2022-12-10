@extends('teacher.master')
@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">All Courses Information</h4>
                    <p class="card-title-desc">{{Session::get('message')}}
                    </p>

                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>Serial Number</th>
{{--                            <th>Category</th>--}}
                            <th>title</th>
                            <th>Fee</th>
                            <th>Starting Date</th>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($courses as $course)
                            <tr>
                                <td>{{$loop->iteration}}</td>
{{--                                <td>{{$course->category->name}}</td>--}}
                                <td>{{$course->title}}</td>
                                <td>{{$course->fee}}</td>
                                <td>{{$course->starting_date}}</td>
                                <td>
                                    <img src="{{asset('/')}}{{$course->image}}" alt="" width="150">
                                </td>
                                <td>
                                    <a href="{{route('course.edit',$course->id)}}" class="btn btn-outline-success">
                                        <i class="fa fa-edit"></i>
                                    </a>
                                    <a href="{{route('course.delete',$course->id)}}" class="btn btn-outline-danger">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->


@endsection
