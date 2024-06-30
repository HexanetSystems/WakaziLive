@extends('front.master-register')

@section('content')

<div class="page-content bg-light">

    <section class="px-3">
        <div class="row align-center-center" style="margin:0 auto;">
            <div class="col-xxl-10 col-xl-10 col-lg-10 end-side-content" style="margin:0 auto;">
                <div class="login-area" style="margin:0 auto; max-width: 822px">
                    <h2 class="text-secondary text-center">Supplier Registration </h2>
                    <p class="text-center m-b30">Welcome please registration to your account</p>
                    <form method="POST" action="{{ route('become-supplier-post') }}">
                        @csrf
                        <div class="row">
                            <div class="m-b25 col-lg-6">
                                <label class="label-title">Full Name</label>
                                <input id="email" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="m-b25 col-lg-6">
                                <label class="label-title">Email Address</label>
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row">
                            <div class="m-b40 col-lg-6">
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
                            {{--  --}}
                            <div class="m-b40 col-lg-6">
                                <label class="label-title">Password Confirm</label>
                                <div class="secure-input ">
                                    <input type="password" name="password_confirm" class="form-control dz-password @error('password') is-invalid @enderror" placeholder="Password">
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
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-secondary btnhover text-uppercase me-2">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</div>

@endsection
