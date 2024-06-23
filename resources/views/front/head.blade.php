<header class="site-header mo-left header style-1 header-transparent">
		<!-- Main Header -->
		<div class="sticky-header main-bar-wraper navbar-expand-lg">
			<div class="main-bar clearfix">
				<div class="container-fluid clearfix d-lg-flex d-block">

					<!-- Website Logo -->
					<div class="logo-header logo-dark me-md-5">
						<a href="{{url('/')}}"><img src="{{asset('theme/images/e13dcf4f-46b6-4115-8b72-84ab4e394812.jpeg')}}" alt="logo"></a>
					</div>

					<!-- Nav Toggle Button -->
					<button class="navbar-toggler collapsed navicon justify-content-end" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
						<span></span>
						<span></span>
						<span></span>
					</button>
                    <?php
                       $Category = DB::table('mains')->limit(4)->get();
                    ?>
					<!-- Main Nav -->
					<div class="header-nav w3menu navbar-collapse collapse justify-content-start" id="navbarNavDropdown">
						<div class="logo-header logo-dark">
							<a href="{{url('/')}}"><img src="{{asset('theme/images/logo.png')}}" alt=""></a>
						</div>
						<ul class="nav navbar-nav">
							{{-- <li class="auto-width menu-left">
								<a href="{{url('/')}}"><span>Home</span></a>
							</li> --}}


                            @foreach ($Category as $category)
                            <li class="sub-menu-down">
								<a href="{{url('/')}}/products/{{$category->slung}}"><span>{{$category->title}}</span><i class="fas fa-chevron-down tabindex"></i></a>
                                <ul class="sub-menu">
                                    <?php
                                       $Main = DB::table('categories')->where('main_id',$category->id)->get();
                                    ?>
                                    @foreach ($Main as $mains)
									<li><a href="{{url('/')}}/products/{{$mains->slung}}">{{$mains->title}}</a></li>
                                    @endforeach

								</ul>
							</li>
                            @endforeach


                            <li class="auto-width menu-left">
								<a href="javascript:void(0);"><span>Artisan Voices</span></a>
							</li>

                            <li class="auto-width menu-left">
								<a href="javascript:void(0);"><span>County Bounty</span></a>
							</li>
                            <li class="auto-width menu-left">
								<a href="javascript:void(0);"><span>Our Story</span></a>
							</li>

						</ul>
						<div class="dz-social-icon">
							<ul>
								<li><a class="fab fa-facebook-f" target="_blank" href="https://www.facebook.com/wakaziworks"></a></li>
								<li><a class="fab fa-twitter" target="_blank" href="https://twitter.com/wakaziworks"></a></li>
								<li><a class="fab fa-linkedin-in" target="_blank" href="https://www.linkedin.com/showcase/3686700/admin/"></a></li>
								<li><a class="fab fa-instagram" target="_blank" href="https://www.instagram.com/wakaziworks/"></a></li>
							</ul>
						</div>
					</div>

					<!-- EXTRA NAV -->
					<div class="extra-nav">
						<div class="extra-cell">
							<ul class="header-right">
								<li class="nav-item login-link">
                                    @if(Auth::User())
                                    <a class="nav-link" href="{{url('/')}}/dashboard">
										<span class="fa fa-user"> </span> &nbsp; Dashboard
									</a>
                                    @else
									<a class="nav-link" href="{{url('/')}}/login-select">
										Login / Register
									</a>
                                    @endif
								</li>
								<li class="nav-item search-link">
									<a class="nav-link" href="javascript:void(0);" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">
										<i class="iconly-Light-Search"></i>
									</a>
								</li>

								<li class="nav-item cart-link">
									<a href="{{url('/')}}/cart/shopping-cart" class="nav-link cart-btn"  data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
										<i class="iconly-Broken-Buy"></i>
										<span class="badge badge-circle">{{Cart::count()}}</span>
									</a>
								</li>
								{{-- <li class="nav-item filte-link">
									<a href="javascript:void(0);" class="nav-link filte-btn"  data-bs-toggle="offcanvas" data-bs-target="#offcanvasLeft" aria-controls="offcanvasLeft">
										<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 13" fill="none">
											<rect y="11" width="30" height="2" fill="black"/>
											<rect width="30" height="2" fill="black"/>
										</svg>
									</a>
								</li> --}}
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- Main Header End -->
        <?php
            $AllCategory = DB::table('categories')->limit(4)->get();
        ?>
		<!-- SearchBar -->
		<div class="dz-search-area dz-offcanvas offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop">
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
				&times;
			</button>
			<div class="container">
				<form class="header-item-search">
					<div class="input-group search-input">
						<select class="default-select">
							<option>All Categories</option>
                            @foreach ($AllCategory as $allCategories)
                            <option value="{{$allCategories->id}}">{{$allCategories->title}}</option>
                            @endforeach
						</select>
						<input type="search" class="form-control" placeholder="Search Product">
						<button class="btn" type="button">
							<i class="iconly-Light-Search"></i>
						</button>
					</div>
					<ul class="recent-tag">
						<li class="pe-0"><span>Quick Search :</span></li>
						{{-- <li><a href="shop-list.html">Clothes</a></li>
						<li><a href="shop-list.html">UrbanSkirt</a></li>
						<li><a href="shop-list.html">VelvetGown</a></li>
						<li><a href="shop-list.html">LushShorts</a></li> --}}
					</ul>
				</form>
				{{-- <div class="row">
					<div class="col-xl-12">
						<h5 class="mb-3">You May Also Like</h5>
						<div class="swiper category-swiper2">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="shop-card">
										<div class="dz-media ">
											<img src="{{asset('theme/images/shop/product/1.png')}}" alt="image">
										</div>
										<div class="dz-content">
											<h6 class="title"><a href="shop-list.html">SilkBliss Dress</a></h6>
											<h6 class="price">$40.00</h6>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="shop-card">
										<div class="dz-media ">
											<img src="{{asset('theme/images/shop/product/3.png')}}" alt="image">
										</div>
										<div class="dz-content">
											<h6 class="title"><a href="shop-list.html">GlamPants</a></h6>
											<h6 class="price">$30.00</h6>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="shop-card">
										<div class="dz-media ">
											<img src="{{asset('theme/images/shop/product/4.png')}}" alt="image">
										</div>
										<div class="dz-content">
											<h6 class="title"><a href="shop-list.html">ComfyLeggings</a></h6>
											<h6 class="price">$35.00</h6>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="shop-card">
										<div class="dz-media ">
											<img src="{{asset('theme/images/shop/product/2.png')}}" alt="image">
										</div>
										<div class="dz-content">
											<h6 class="title"><a href="shop-list.html">ClassicCapri</a></h6>
											<h6 class="price">$20.00</h6>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="shop-card">
										<div class="dz-media ">
											<img src="{{asset('theme/images/shop/product/5.png')}}" alt="image">
										</div>
										<div class="dz-content">
											<h6 class="title"><a href="shop-list.html">DapperCoat</a></h6>
											<h6 class="price">$70.00</h6>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="shop-card">
										<div class="dz-media ">
											<img src="{{asset('theme/images/shop/product/6.png')}}" alt="image">
										</div>
										<div class="dz-content">
											<h6 class="title"><a href="shop-list.html">ComfyLeggings</a></h6>
											<h6 class="price">$45.00</h6>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="shop-card">
										<div class="dz-media ">
											<img src="{{asset('theme/images/shop/product/7.png')}}" alt="image">
										</div>
										<div class="dz-content">
											<h6 class="title"><a href="shop-list.html">DenimDream Jeans</a></h6>
											<h6 class="price">$40.00</h6>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="shop-card">
										<div class="dz-media ">
											<img src="{{asset('theme/images/shop/product/4.png')}}" alt="image">
										</div>
										<div class="dz-content">
											<h6 class="title"><a href="shop-list.html">SilkBliss Dress</a></h6>
											<h6 class="price">$60.00</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> --}}
			</div>
		</div>
		<!-- SearchBar -->

		<!-- Sidebar cart -->
		<div class="offcanvas dz-offcanvas offcanvas offcanvas-end " tabindex="-1" id="offcanvasRight">
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
				&times;
			</button>
			<div class="offcanvas-body">
				<div class="product-description">
					<div class="dz-tabs">
						<ul class="nav nav-tabs center" id="myTab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="nav-link active" id="shopping-cart" data-bs-toggle="tab" data-bs-target="#shopping-cart-pane" type="button" role="tab" aria-controls="shopping-cart-pane" aria-selected="true">Shopping Cart
									<span class="badge badge-light">{{Cart::count()}}</span>
								</button>
							</li>
							{{-- <li class="nav-item" role="presentation">
								<button class="nav-link" id="wishlist" data-bs-toggle="tab" data-bs-target="#wishlist-pane" type="button" role="tab" aria-controls="wishlist-pane" aria-selected="false">Wishlist
									<span class="badge badge-light">2</span>
								</button>
							</li> --}}
						</ul>
						<div class="tab-content pt-4" id="dz-shopcart-sidebar">
							<div class="tab-pane fade show active" id="shopping-cart-pane" role="tabpanel" aria-labelledby="shopping-cart" tabindex="0">
								<div class="shop-sidebar-cart">
									<ul class="sidebar-cart-list">
                                        <?php
                                           $ShoppingCart = Cart::content();
                                        ?>
                                        @foreach ($ShoppingCart as $shoppingCart)
                                        <?php
                                           $Product = \App\Models\Product::find($shoppingCart->id);
                                        ?>
                                        <li>
											<div class="cart-widget">
												<div class="dz-media me-3">
													<img src="{{$Product->image_one}}" alt="">
												</div>
												<div class="cart-content">
													<h6 class="title"><a href="{{url('/')}}/product/{{$Product->slung}}">{{$shoppingCart->name}} - {{$shoppingCart->qty}}</a></h6>
													<div class="d-flex align-items-center">
														{{-- <div class="btn-quantity light quantity-sm me-3">
															<input type="text" value="1" name="demo_vertical2">
														</div> --}}
														<h6 class="dz-price mb-0">kes {{$shoppingCart->price}}</h6>
													</div>
												</div>
												<a href="javascript:void(0);" class="dz-close">
													<i class="ti-close"></i>
												</a>
											</div>
										</li>
                                        @endforeach

									</ul>
									<div class="cart-total">
										<h5 class="mb-0">VAT:</h5>
										<h5 class="mb-0">{{Cart::tax()}}</h5>
									</div>
                                    <div class="cart-total">
										<h5 class="mb-0">Subtotal:</h5>
										<h5 class="mb-0">{{Cart::subtotal()}}</h5>
									</div>
                                    <div class="cart-total">
										<h5 class="mb-0">Total:</h5>
										<h5 class="mb-0">{{Cart::total()}}</h5>
									</div>
									<div class="mt-auto">
										<div class="shipping-time">
											<div class="dz-icon">
												<i class="flaticon flaticon-ship"></i>
											</div>
											<div class="shipping-content">
												<h6 class="title pe-4">Congratulations , you've got 5% off on shipping!</h6>
												<div class="progress">
													<div class="progress-bar progress-animated border-0" style="width: 75%;" role="progressbar">
														<span class="sr-only">75% Complete</span>
													</div>
												</div>
											</div>
										</div>
										<a href="{{url('/')}}/cart/checkout" class="btn btn-outline-secondary btn-block m-b20">Checkout</a>
										<a href="{{url('/')}}/cart/shopping-cart" class="btn btn-secondary btn-block">View Cart</a>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Sidebar cart -->


	</header>
