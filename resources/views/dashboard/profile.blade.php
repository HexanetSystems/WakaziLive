@extends('front.master-cart')

@section('content')

<div class="page-content bg-light">
 <!--Banner Start-->
 <div class="dz-bnr-inr bg-secondary overlay-black-light" style="background-image:url('{{asset('theme/images/background/bg7.jpg')}}');">
    <div class="container">
        <div class="dz-bnr-inr-entry">
            <h1>{{Auth::User()->name}}: My Account</h1>
            <nav aria-label="breadcrumb" class="breadcrumb-row">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"> Home</a></li>
                    <li class="breadcrumb-item">{{Auth::User()->name}}: My Account</li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<!--Banner End-->


<div class="content-inner-1">
    <div class="container">
        <div class="row">
            @include('dashboard.aside')
            <section class="col-xl-9 account-wrapper">
                <div class="account-card">
                    <div class="profile-edit">
                        <div class="avatar-upload d-flex align-items-center">
                            <div class=" position-relative ">
                                <div class="avatar-preview thumb">
                                    <div id="imagePreview" style="background-image: url('{{Auth::User()->image}}');"></div>
                                </div>
                                <div class="change-btn  thumb-edit d-flex align-items-center flex-wrap">
                                    <input type='file' class="form-control d-none" id="imageUpload" accept=".png, .jpg, .jpeg">
                                    <label for="imageUpload" class="btn btn-light ms-0"><i class="fa-solid fa-camera"></i></label>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix">
                            <h2 class="title mb-0">{{Auth::User()->name}}</h2>
                            <span class="text text-primary">
                                <a href="mailto:{{Auth::User()->email}}">{{Auth::User()->email}}</a></span>

                        </div>
                    </div>
                    <form action="{{route('account-profile')}}" method="POST" class="row">
                        @csrf
                        <div class="col-lg-6">
                            <div class="form-group m-b25">
                                <label class="label-title">Full Name</label>
                                <input name="name" required="" value="{{Auth::User()->name}}" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group m-b25">
                                <label class="label-title">Email address</label>
                                <input type="email" value="{{Auth::User()->email}}"  required="" class="form-control">
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group m-b25">
                                <label class="label-title">Phone Number</label>
                                <input name="mobile" value="{{Auth::User()->mobile}}" required="" class="form-control">
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group m-b25">
                                <label class="label-title">Company</label>
                                <input type="text" name="company" value="{{Auth::User()->company}}" required="" class="form-control">
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group m-b25">
                                <label class="label-title">Address</label>
                                <input type="text" name="address" value="{{Auth::User()->address}}" required="" class="form-control">
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group m-b25">
                                <label class="label-title">Country</label>
                                <input type="text" name="country" value="{{Auth::User()->country}}" required="" class="form-control">
                            </div>
                        </div>

                        <div class="col-lg-4">
                            <div class="form-group m-b25">
                                <label class="label-title">Apartment</label>
                                <input type="text" name="apartment" value="{{Auth::User()->apartment}}" required="" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group m-b25">
                                <label class="label-title">Street</label>
                                <input type="text" name="street" value="{{Auth::User()->street}}" required="" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group m-b25">
                                <label class="label-title">Zip Code</label>
                                <input type="text" name="zip" value="{{Auth::User()->zip}}" required="" class="form-control">
                            </div>
                        </div>

                        <div class="d-flex flex-wrap justify-content-between align-items-center">
                            <div class="form-group">
                                <div class="custom-control custom-checkbox text-black">
                                    <input checked type="checkbox" class="form-check-input" id="basic_checkbox_1">
                                    <label class="form-check-label" for="basic_checkbox_1">Subscribe me to Newsletter</label>
                                </div>
                            </div>
                            <button class="btn btn-primary mt-3 mt-sm-0" type="submit">Update profile</button>
                        </div>

                    </form>

                </div>
            </section>
        </div>
      </div>
</div>
</div>



</div>


@endsection
