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
            @foreach ($Order as $order)
            <?php
               $OrderProduct = DB::table('orders_product')->where('orders_id',$order->id)->get();
            ?>
                @foreach ($OrderProduct as $orderproduct)
                <?php
                   $Product = \App\Models\Product::find($orderproduct->product_id)
                ?>
                <section class="col-xl-9 account-wrapper">
                    <div class="account-card order-details">
                        <div class="order-head">
                            <div class="head-thumb">
                                <img src="{{$Product->image_one}}" alt="">
                            </div>
                            <div class="clearfix m-l20">
                                <div class="badge">{{$order->status}}</div>
                                <h4 class="mb-0">Order #wkz-{{$order->id}}</h4>
                            </div>
                        </div>
                        <div class="row mb-sm-4 mb-2">
                            <div class="col-sm-6">
                                <div class="shiping-tracker-detail">
                                    <span>Item</span>
                                    <h6 class="title">{{$Product->name}}</h6>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="shiping-tracker-detail">
                                    <span>Supplier</span>
                                    <h6 class="title">
                                        <?php
                                           $User = \App\Models\User::find($Product->UserID);
                                           echo $User->name;
                                        ?>
                                    </h6>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="shiping-tracker-detail">
                                    <span>Order Date</span>
                                    <h6 class="title">{{date('d M Y, h:s:i', strtotime($order->created_at))}}</h6>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="shiping-tracker-detail">
                                    <span>Price</span>
                                    <h6 class="title">{{$order->total}}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="content-btn m-b15">
                            <a href="shop-wishlist.html" class="btn btn-secondary me-xl-3 me-2 m-b15 btnhover20">Export Details</a>
                            <a href="{{url('/')}}/product/{{$Product->slung}}" class="btn btn-outline-secondary m-b15 me-xl-3 me-2 btnhover20">Request Confirmation</a>
                            <a href="{{url('/')}}/dashboard/cancel-order/{{$order->id}}" onclick="return confirm('Do you wish to cancel the order?')" class="btn btn-outline-danger m-b15 btnhover20">Cancel Order</a>
                        </div>
                        <div class="clearfix">
                            <div class="dz-tabs style-3">
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    {{-- <button class="nav-link active" id="nav-order-history-tab" data-bs-toggle="tab" data-bs-target="#nav-order-history" role="tab" aria-controls="nav-order-history" aria-selected="true">Order History</button> --}}
                                    <button class="nav-link active" id="nav-Item-tab" data-bs-toggle="tab" data-bs-target="#nav-Item" role="tab" aria-controls="nav-Item" aria-selected="false">Item Details</button>
                                    {{-- <button class="nav-link" id="nav-courier-tab" data-bs-toggle="tab" data-bs-target="#nav-courier" role="tab" aria-controls="nav-courier" aria-selected="false">Courier</button>
                                    <button class="nav-link" id="nav-receiver-tab" data-bs-toggle="tab" data-bs-target="#nav-receiver" role="tab" aria-controls="nav-receiver" aria-selected="false">Receiver</button> --}}
                                </div>
                            </div>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade" id="nav-order-history" role="tabpanel" aria-labelledby="nav-order-history-tab" tabindex="0">
                                    <div class="widget-timeline style-1">
                                        <ul class="timeline">
                                            <li>
                                                <div class="timeline-badge success"></div>
                                                <div class="timeline-box">
                                                    <a class="timeline-panel" href="javascript:void(0);">
                                                        <h6 class="mb-0">Product Shiped</h6>
                                                        <span>08/04/2024 5:23pm</span>
                                                    </a>
                                                    <p><strong>Courier Service : </strong>UPS, R. Gosling</p>
                                                    <p><strong>Estimated Delivery Date : </strong>09/04/2024</p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-badge primary"></div>
                                                <div class="timeline-box">
                                                    <a class="timeline-panel" href="javascript:void(0);">
                                                        <h6 class="mb-0">Product Shiped</h6>
                                                        <span>08/04/2024 5:23pm</span>
                                                    </a>
                                                    <p><strong>Tracking Number : </strong>3409-4216-8759</p>
                                                    <p><strong>Warehouse : </strong>Top Shirt 12b</p>
                                                </div>
                                            </li>
                                             <li>
                                                <div class="timeline-badge"></div>
                                                <div class="timeline-box">
                                                    <a class="timeline-panel" href="javascript:void(0);">
                                                       <h6 class="mb-0">Product Packaging</h6>
                                                        <span>09/04/2024 4:34pm</span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-badge"></div>
                                                <div class="timeline-box">
                                                    <a class="timeline-panel" href="javascript:void(0);">
                                                       <h6 class="mb-0">Order Palced</h6>
                                                        <span>10/04/2024 2:36pm</span>
                                                    </a>
                                                </div>
                                            </li>

                                        </ul>
                                    </div>
                                </div>

                                <div class="tab-pane fade show active" id="nav-Item" role="tabpanel" aria-labelledby="nav-Item-tab" tabindex="0">
                                    <h5>Item Details</h5>
                                    <div class="tracking-item">
                                        <div class="tracking-product"><img src="{{$Product->image_one}}" alt=""></div>
                                        <div class="tracking-product-content">
                                            <h6 class="title">{{$Product->name}}</h6>
                                            <small class="d-block"><strong>Unit Price</strong> : kes {{$Product->price}}</small>

                                        </div>
                                    </div>
                                    <div class="tracking-item-content">
                                        <span>Total Price</span>
                                        <h6>{{$order->total}}</h6>
                                    </div>
                                      <div class="tracking-item-content border-bottom border-light mb-2">
                                        <span class="text-success">Total Tax</span>
                                        <h6>+ kes {{$orderproduct->tax}}</h6>
                                    </div>
                                    {{-- <div class="tracking-item-content">
                                        <span>Order Total</span>
                                        <h6>$95</h6>
                                    </div> --}}
                                </div>
                                <div class="tab-pane fade" id="nav-courier" role="tabpanel" aria-labelledby="nav-courier-tab" tabindex="0">
                                    <p>{{$Product->meta}}</p>
                                </div>
                                <div class="tab-pane fade" id="nav-receiver" role="tabpanel" aria-labelledby="nav-receiver-tab" tabindex="0">
                                    <h5 class="text-success mb-4">Thank you Your order has been received</h5>
                                    <ul class="tracking-receiver">
                                        <li>Order Number : <strong>#17493</strong></li>
                                        <li>Date : <strong>17/04/2024, 02:34pm</strong></li>
                                        <li>Total : <strong>$95</strong></li>
                                        <li>Payment Methods : <strong>Cash on Delivery</strong></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                @endforeach

            @endforeach
        </div>
      </div>
</div>
</div>



</div>


@endsection
