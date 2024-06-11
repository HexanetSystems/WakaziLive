@extends('front.master')

@section('content')

<div class="page-content bg-light">
<br><br><br>


    <!-- contact area -->
    <section class="content-inner shop-account">
        <!-- Product -->
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="table-responsive">
                        <table class="table check-tbl">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th></th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Subtotal</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($CartItems as $shoppingCart)
                                    <?php
                                        $Product = \App\Models\Product::find($shoppingCart->id);
                                    ?>
                                    <tr>
                                        <td class="product-item-img"><img src="{{$Product->image_one}}" alt="/"></td>
                                        <td class="product-item-name">{{$Product->name}}</td>
                                        <td class="product-item-price">kes {{$shoppingCart->price}}</td>
                                        <td class="product-item-quantity">
                                            <div class="quantity btn-quantity style-1 me-3">
                                                <input type="text" value="{{$shoppingCart->qty}}" name="demo_vertical2">
                                            </div>
                                        </td>
                                        <td class="product-item-totle"> kes {{$shoppingCart->total}}</td>
                                        <td class="product-item-close"><a href="javascript:void(0);"><i class="ti-close"></i></a></td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="row shop-form m-t30">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="input-group mb-0">
                                    <input name="dzEmail" required="required" type="text" class="form-control" placeholder="Coupon Code">
                                    <div class="input-group-addon">
                                        <button name="submit" value="Submit" type="submit" class="btn coupon">
                                            Apply Coupon
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 text-end">
                            <a href="shop-cart.html" class="btn btn-secondary">UPDATE CART</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h4 class="title mb15">Cart Total</h4>
                    <div class="cart-detail">
                        <a href="javascript:void(0);" class="btn btn-outline-secondary w-100 m-b20">Starter Offer 2% Discount</a>
                        <div class="icon-bx-wraper style-4 m-b15">
                            <div class="icon-bx">
                                <i class="flaticon flaticon-ship"></i>
                            </div>
                            <div class="icon-content">
                                <span class=" font-14">Affordable Shipping</span>
                                <h6 class="dz-title">Enjoy low shiping rates to be delivered to you within 24 hours</h6>
                            </div>
                        </div>
                        <div class="icon-bx-wraper style-4 m-b30">
                            <div class="icon-bx">
                                <img src="{{asset('theme/images/shop/shop-cart/icon-box/pic2.png')}}" alt="/">
                            </div>
                            <div class="icon-content">
                                <h6 class="dz-title">Delivery Policy</h6>
                                <p>Confirm that you have understood our <a href="#">Terms and Conditions</a> </p>
                            </div>
                        </div>
                        <div class="save-text">
                            <i class="icon feather icon-check-circle"></i>
                            <span class="m-l10">You will be billed kes{{Cart::tax()}} on this order</span>
                        </div>
                        <div class="save-text">
                            <i class="icon feather icon-check-circle"></i>
                            <span class="m-l10">Subtotal:{{Cart::subtotal()}}</span>
                        </div>
                        <table>
                            <tbody>
                                <tr class="total">
                                    <td>
                                        <h6 class="mb-0">Total</h6>
                                    </td>
                                    <td class="price">
                                        kes {{Cart::total()}}
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <a href="{{url('/')}}/cart/checkout" class="btn btn-secondary w-100">Procced to Checkout</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product END -->
    </section>
    <!-- contact area End-->

</div>


@endsection
