@extends('suppliers.master')

@section('content')

  <!-- sa-app__sidebar / end --><!-- sa-app__content -->
  <div class="sa-app__content">
    <!-- sa-app__toolbar -->
    @include('suppliers.toolbar')
    <!-- sa-app__toolbar / end --><!-- sa-app__body -->
    <form method="POST" action="{{route('update-my-profile')}}">
        @csrf
        <div id="top" class="sa-app__body">
        <div class="mx-sm-2 px-2 px-sm-3 px-xxl-4 pb-6">
            <div class="container container--max--lg">
                <div class="py-5">
                    <div class="row g-4 align-items-center">
                    <div class="col">
                        <nav class="mb-2" aria-label="breadcrumb">
                            {{-- <ol class="breadcrumb breadcrumb-sa-simple">
                                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="app-settings-toc.html">Settings</a></li>
                                <li class="breadcrumb-item active" aria-current="page">General</li>
                            </ol> --}}
                        </nav>
                        <h1 class="h3 m-0">My Profile</h1>
                    </div>
                    <div class="col-auto d-flex"><a href="#" class="btn btn-secondary me-3">Reset</a><button type="submit" class="btn btn-primary">Save</button></div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body p-5">
                    <h2 class="mb-0 fs-exact-18">Store Info:</h2>


                    <div class="mb-4"><label for="form-settings/name" class="form-label">Store Name</label>
                        <input type="text" name="company" class="form-control" id="form-settings/name" value="{{Auth::User()->company}}"/>
                    </div>
                    <div class="mb-4"><label for="form-settings/description" class="form-label">Store Description</label>
                        <textarea class="form-control" id="form-settings/description" rows="4" name="comment">{{Auth::User()->comment}}</textarea>
                    </div>
                    <div class="mb-n2">
                        <label for="form-settings/email" class="form-label">Email Address</label>
                        <input type="text" name="email" readonly class="form-control" id="form-settings/email" aria-describedby="form-settings/email/help" value="{{Auth::User()->email}}"/>
                        <div id="form-settings/email/help" class="form-text">The contact email address of the store administrator.</div>
                    </div>
                    </div>
                </div>
                <div class="card mt-5">
                    <div class="card-body p-5">
                    <div class="mb-5">
                        <h2 class="mb-0 fs-exact-18">My Info</h2>

                    </div>
                    <div class="row g-4">
                        <div class="col-6">
                            <div class="mb-4"><label for="form-settings/name" class="form-label">Full Name</label>
                                <input type="text" name="name" class="form-control" id="form-settings/name" value="{{Auth::User()->name}}"/>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-4"><label for="form-settings/name" class="form-label">Email</label>
                                <input type="text" readonly name="email" class="form-control" id="form-settings/name" value="{{Auth::User()->email}}"/>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-4"><label for="form-settings/name" class="form-label">Phone Number</label>
                                <input type="text" name="phone" class="form-control" id="form-settings/name" value="{{Auth::User()->mobile}}"/>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="card mt-5">
                    <div class="card-body p-5">
                    <div class="mb-5">
                        <h2 class="mb-0 fs-exact-18">Address Info</h2>
                        <div class="mt-3 text-muted">Timezone, Location Address & Zip Codes</div>
                    </div>
                    {{--  --}}
                    <div class="row g-4">
                        <div class="col-6">
                            <div class="mb-4"><label for="form-settings/name" class="form-label">Address</label>
                                <input type="text" name="address" class="form-control" id="form-settings/name" value="{{Auth::User()->address}}"/>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-4"><label for="form-settings/name" class="form-label">Apartment</label>
                                <input type="text" name="apartment" class="form-control" id="form-settings/name" value="{{Auth::User()->apartment}}"/>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-4"><label for="form-settings/name" class="form-label">Country</label>
                                <input type="text" name="country" class="form-control" id="form-settings/name" value="{{Auth::User()->country}}"/>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-4"><label for="form-settings/name" class="form-label">Street</label>
                                <input type="text" name="street" class="form-control" id="form-settings/name" value="{{Auth::User()->street}}"/>
                            </div>
                        </div>
                    </div>
                    {{--  --}}
                </div>

            </div>
        </div>
        </div>
    </form>
     <!-- sa-app__body / end --><!-- sa-app__footer -->
     <div class="sa-app__footer d-block d-md-flex">
        <!-- copyright -->Wakazi Suppliers Dashboad App — © {{date('Y')}}
        <div class="m-auto"></div>
        <div>Powered by Wakazi IT — Design by <a href="#">Wakazi Creatives</a></div>
        <!-- copyright / end -->
     </div>
     <!-- sa-app__footer / end -->
    <!-- sa-app__footer / end -->
 </div>
 <!-- sa-app__content / end --><!-- sa-app__toasts -->
@endsection
