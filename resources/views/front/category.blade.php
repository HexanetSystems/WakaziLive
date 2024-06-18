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
							<div class="dz-media">
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
							<div class="product-tag">
								<span class="badge ">Get 20% Off</span>
							</div>
						</div>
					</div>
                    @endforeach
				</div>
				<div class="row page mt-0">
					<div class="col-md-6">
						<p class="page-text">Showing 1–5 Of 50 Results</p>
					</div>
					<div class="col-md-6">
						<nav aria-label="Blog Pagination">
							<ul class="pagination style-1">
								<li class="page-item"><a class="page-link active" href="javascript:void(0);">1</a></li>
								<li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
								<li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
								<li class="page-item"><a class="page-link next" href="javascript:void(0);">Next</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>

	</div>





@endsection
