@extends('front.master')

@section('content')
<div class="page-content bg-light">
    <section class="content-inner-1">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-10 col-md-12">
                    <div class="error-page style-1">
                        <div class="dz-error-media">
                            <img src="{{asset('theme/images/confirmation.png')}}" alt="">
                        </div>
                        <div class="error-inner">
                            <h1 class="dz_error">Thank You</h1>
                            <p class="error-head">Thank You For Shopping With Us</p>
                            <a href="{{url('/')}}" class="btn btn-secondary  text-uppercase">Go to Main Page</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>

@endsection
