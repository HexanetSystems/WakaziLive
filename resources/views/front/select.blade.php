@extends('front.master')

@section('content')
<div class="page-content bg-light">

    <section class="px-3">
        <div class="row align-center-center">
            <div class="col-xxl-6 col-xl-6 col-lg-6 start-side-content">
                <div class="dz-bnr-inr-entry">
                    <h1>My Account</h1>
                    <nav aria-label="breadcrumb text-align-start" class="breadcrumb-row">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"> Home</a></li>
                            <li class="breadcrumb-item">Shop Registration</li>
                        </ul>
                    </nav>
                </div>
                <div class="registration-media">
                    <img src="{{asset('theme/images/Picture-Hanging-Ideas-Nails-and-Screws-683x1024-removebg-preview.png')}}" alt="/">
                </div>
            </div>
            <div class="col-xxl-6 col-xl-6 col-lg-6 end-side-content">
                <div class="login-area">
                    <h2 class="text-secondary text-center">Login</h2>
                    <p class="text-center m-b30">Welcome please login to your account</p>
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="m-b25">
                            <label class="label-title">Email Address</label>
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="m-b40">
                            <label class="label-title">Password</label>
                            <div class="secure-input ">
                                <input type="password" name="password" class="form-control dz-password @error('password') is-invalid @enderror" placeholder="Password">
                                <div class="show-pass">
                                    <i class="eye-open fa-regular fa-eye"></i>
                                </div>
                            </div>
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-secondary btnhover text-uppercase me-2">Proceed</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

</section>

</div>

@endsection
