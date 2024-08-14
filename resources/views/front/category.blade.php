@extends('front.master-cart')

@section('content')




	<div class="page-content bg-light">
		<!--Banner Start-->
        <div class="dz-bnr-inr bg-secondary overlay-black-light" style="background-image:url('{{$Category->image}}');">
            <div class="container">
                <div class="dz-bnr-inr-entry">
                    <h1>{{$Category->title}}</h1>
                    <nav aria-label="breadcrumb" class="breadcrumb-row">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{url('/')}}"> Home</a></li>
                            <li class="breadcrumb-item">Our Collection</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
		<!--Banner End-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
		<section class="content-inner-1 z-index-unset">
			<div class="container">
				<div class="row m-auto gx-xl-4 g-3 mb-xl-0 mb-md-0 mb-3">
                    @foreach ($Product as $Pro)
                        <div class="col-6 col-xl-3 col-lg-4 col-md-4 col-sm-6 m-md-b15 m-sm-b0 m-b30">
                            <div class="shop-card style-1">
                                <div class="dz-media product-imgs">
                                    <img class="product-img" src="{{$Pro->image_one}}" alt="{{$Pro->name}}">
                                    <div class="shop-meta">
                                        <a href="{{url('/')}}/product/{{$Pro->slung}}" class="btn btn-secondary btn-md btn-rounded addToCarts" data-bs-toggle="modals" data-bs-target="exampleModal_{{$Pro->id}}">
                                            <i class="fa-solid fa-eye d-md-none d-block"></i>
                                            <span class="d-md-block" id="cta_{{$Pro->id}}"> Explore

                                            </span>
                                        </a>

                                        <a id="productID_{{$Pro->id}}" href="#" style=" width:45px; height:45px; border-radius:50%">
                                            <div class="btn btn-primary meta-icon dz-carticon">
                                                <i class="flaticon flaticon-basket"></i>
                                                <i class="flaticon flaticon-basket-on dz-heart-fill"></i>
                                            </div>
                                        </a>

                                    </div>
                                </div>
                                <div class="dz-content">
                                    <h5 class="title"><a href="{{url('/')}}/product/{{$Pro->slung}}">{{$Pro->name}}</a></h5>
                                    <h5 class="price">Ksh {{$Pro->price}}</h5>
                                </div>
                                <?php
                                    $Main = \App\Models\Main::find($Pro->main);
                                ?>
                                @if($Main==null)

                                @else
                                <div class="product-tag">
                                    <span class="badge ">

                                        {{$Main->title}}

                                    </span>
                                </div>
                                @endif
                            </div>
                        </div>
                        <form method="post" action="{{route('add-to-cart-ajax')}}" style="display:none" id="form_{{$Pro->id}}">
                            @csrf
                            <input type="hidden" name="product_id" value="{{$Pro->id}}">
                          </form>
                        <script>
                            $(document).ready(function() {
                                // Submit
                                $("#productID_{{$Pro->id}}").on('click', (function(e) {
                                    $("#cta_{{$Pro->id}}").html("Adding..");
                                    e.preventDefault();
                                    $("#form_{{$Pro->id}}").submit();
                                }));
                                //
                                $("#form_{{$Pro->id}}").on('submit', (function(e) {
                                    e.preventDefault();
                                    $.ajax({
                                    url: $(this).attr('action'),
                                    type: "POST",
                                    data: new FormData(this),
                                    contentType: false,
                                    cache: false,
                                    processData: false,
                                    success: function(response) {
                                        $("#form").trigger("reset"); // to reset form input fields
                                        $( "#cta_{{$Pro->id}}" ).html("Added To Cart");
                                        // $("#cta_{{$Pro->id}}").html("Explore");
                                        // $( "#cta_{{$Pro->id}}" ).delay(8000).html("Explore");
                                        $("#offcanvasRight").load(" #offcanvasRight > *");
                                        $("#cartCount").load(" #cartCount > *");
                                        // Open Cart
                                        $("#cartCount").click();
                                    },
                                    error: function(e) {
                                        console.log(e);
                                    }
                                    });
                                }));
                            });
                        </script>

                    @endforeach
				</div>
				<div class="row page mt-0">
					<div class="col-md-6">
						<p class="page-text">Showing {{$Product->count()}} Of {{$ProductCount->count()}} Results</p>
					</div>
					<div class="col-md-6">
						<?php echo $Product ?>
					</div>
				</div>
			</div>
		</section>

	</div>





@endsection
