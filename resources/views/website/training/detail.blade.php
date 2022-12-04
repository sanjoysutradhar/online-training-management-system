@extends('website.master')
@section('title')
    Login / Registration
@endsection

@section('body')



    <section class="py-5 bg-white">
        <div class="container">


            <div class="row mb-3">
                <div class="card">
                    <div class="row">
                    <div class="col-md-6">
                        <img src="{{asset('/')}}website/images/blog-1.jpg" alt="" class="card-img">
                    </div>

                    <div class="col-md-6">
                           <div class="card-body">
                               <h3>Title</h3>
                               <p>Price Tk: 12547</p>
                               <p>Starts at: 12/01/2023</p>
                               <button type="button" class="btn btn-success px-5">Enroll</button>
                           </div>
                    </div>

                    </div>
                </div>
            </div>


            <div class="row mt-3">
                <div class="col-md-12">
                    <div class="card border-0 shadow h-100">
                        <div class="bg-dark text-white text-center py-1 display-6">Training Detail</div>
                        <div class="card-body">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, aut culpa eveniet facere in incidunt maxime modi, mollitia natus nemo neque nihil nisi obcaecati odit praesentium repellendus, temporibus totam unde.</p>

                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, aut culpa eveniet facere in incidunt maxime modi, mollitia natus nemo neque nihil nisi obcaecati odit praesentium repellendus, temporibus totam unde.</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>




@endsection
