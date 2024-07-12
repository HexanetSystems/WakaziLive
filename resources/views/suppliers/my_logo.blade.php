@extends('suppliers.master')

@section('content')

  <!-- sa-app__sidebar / end --><!-- sa-app__content -->
  <div class="sa-app__content">
    <!-- sa-app__toolbar -->
    @include('suppliers.toolbar')
    <!-- sa-app__toolbar / end --><!-- sa-app__body -->
    <form method="POST" action="{{route('update-my-logo')}}" enctype="multipart/form-data">
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
                        <h1 class="h3 m-0">My Logo</h1>
                    </div>
                    <div class="col-auto d-flex"><a href="#" class="btn btn-secondary me-3">Reset</a><button type="submit" class="btn btn-primary">Save</button></div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body p-5">
                    <h2 class="mb-0 fs-exact-18">My Info:</h2>


                    <div class="mb-4"><label for="form-settings/name" class="form-label">Image</label>
                        <label for="formFile-1" class="form-label">Represents Your Potrait of Brand Image</label>
                        <input type="file" name="image" class="form-control" id="formFile-1" />
                    </div>

                    </div>
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
