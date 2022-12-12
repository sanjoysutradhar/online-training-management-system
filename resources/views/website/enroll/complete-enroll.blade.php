@extends('website.master')
@section('title')
    Complete Enroll Page
@endsection
@section('body')
    <section class="py-5 bg-white">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto shadow">
                    <div class="card border-0 shadow h-100">
                        <div class="bg-dark text-white text-center py-1 h3">Course Enroll Status</div>
                        <div class="card-body">
                            <h5>Congratulation your regidtraton is complete.Please Wait, we will contact with you</h5>
                            <h4>Registration current status</h4>

                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>Course Title</th>
                                    <th>Enroll Status</th>
                                    <th>Payment Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>{{$enroll->course->title}}</td>
                                    <td>{{$enroll->enroll_status}}</td>
                                    <td>{{$enroll->payment_status}}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection


