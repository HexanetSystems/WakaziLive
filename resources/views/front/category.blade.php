@extends('front.master-cart')

@section('content')




	<div class="page-content bg-light">
		<!--Banner Start-->
        <div class="dz-bnr-inr bg-secondary overlay-black-light" style="background-image:url('{{asset('theme/images/background/bg7.jpg')}}');">
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

		<section class="content-inner-1 z-index-unset">
			<div class="container">
				<div class="row m-auto gx-xl-4 g-3 mb-xl-0 mb-md-0 mb-3">
                    @foreach ($Product as $Pro)
                    <div class="col-6 col-xl-4 col-lg-4 col-md-4 col-sm-6 m-md-b15 m-sm-b0 m-b30">
						<div class="shop-card style-1">
							<div class="dz-media product-imgs">
								<img src="{{$Pro->image_one}}" alt="image">
								<div class="shop-meta">
														<a href="{{url('/')}}/add-to-cart/{{$Pro->id}}" class="btn btn-secondary btn-md btn-rounded" data-bs-toggle="modala" data-bs-target="#exampleModal">
															<i class="fa-solid fa-eye d-md-none d-block"></i>
															<span class="d-md-block d-none">Buy Now</span>
														</a>
														<div class="btn btn-primary meta-icon dz-wishicon">
															<i class="icon feather icon-heart dz-heart"></i>
															<i class="icon feather icon-heart-on dz-heart-fill"></i>
														</div>
														<div class="btn btn-primary meta-icon dz-carticon">
															<i class="flaticon flaticon-basket"></i>
															<i class="flaticon flaticon-shopping-basket-on dz-heart-fill"></i>
														</div>
													</div>
							</div>
							<div class="dz-content">
								<h5 class="title"><a href="{{url('/')}}/product/{{$Pro->slung}}">{{$Pro->name}}</a></h5>
								<h5 class="price">kes {{$Pro->price}}</h5>
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
