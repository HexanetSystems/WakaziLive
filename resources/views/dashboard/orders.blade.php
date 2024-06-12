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
                    <div class="table-responsive table-style-1">
                        <table class="table table-hover mb-3">
                            <thead>
                                <tr>
                                    <th>Order #</th>
                                    <th>Date Purchased</th>
                                    <th>Total</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($Order as $order)
                                <tr>
                                    <td><a href="#" class="fw-medium">#wkz-{{$order->id}}</a></td>
                                    <td>{{date('M D d, Y', strtotime($order->created_at))}}</td>
                                    <td>kes {{$order->total}}</td>
                                    @if($order->status == "pending")
                                    <td><span class="badge bg-info  m-0">In Progress</span></td>
                                    @else
                                    <td><span class="badge bg-success m-0">Delivered</span></td>
                                    @endif
                                    <td><a href="{{route('account-order', $order->id)}}" class="btn-link text-underline p-0">View</a></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                    <!-- Pagination-->
                    {{-- <div class="d-flex justify-content-center">
                        <nav aria-label="Table Pagination">
                            <ul class="pagination style-1">
                                <li class="page-item"><a class="page-link" href="javascript:void(0);">Prew</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
                            </ul>
                        </nav>
                    </div> --}}
                </div>
            </section>
        </div>
      </div>
</div>
</div>



</div>


@endsection
