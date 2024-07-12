<!-- Header -->
	<header class="site-header mo-left header style-2">
		<!-- Main Header -->
		<div class="header-info-bar">
			<div class="container clearfix">
				<!-- Website Logo -->
				{{-- <div class="logo-header logo-dark">
					<a href="index.html"><img src="images/logo.svg" alt="logo"></a>
				</div> --}}
                <div class="logo-header logo-dark">
                    <a href="{{url('/')}}"><img style="border-radius:10px" src="{{asset('theme/images/e13dcf4f-46b6-4115-8b72-84ab4e394812.jpeg')}}" alt="logo"></a>
                </div>

				<!-- EXTRA NAV -->
				<div class="extra-nav d-md-flex d-none m-l15">
					<div class="extra-cell">
						<ul class="navbar-nav header-right m-0">
							<li class="nav-item info-box ">
								<div class="nav-link">
									<div class="dz-icon">
										<svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 512 512" style="enable-background:new 0 0 512 512" xml:space="preserve"><path style="fill:#3cc" d="M489.343 210.251c-4.827-105.317-92.01-189.513-198.498-189.513h-69.689c-106.488 0-193.67 84.197-198.498 189.513C9.495 214.747 0 227.228 0 241.894v78.61c0 18.436 15 33.436 33.437 33.436h60.996c6.075 0 11-4.925 11-11V219.458c0-6.075-4.925-11-11-11H44.789c5.699-92.338 82.618-165.72 176.366-165.72h69.689c93.749 0 170.667 73.381 176.366 165.72h-49.644c-6.075 0-11 4.925-11 11V342.94c0 6.075 4.925 11 11 11h60.996c18.436 0 33.436-15 33.436-33.436v-78.61c.002-14.666-9.493-27.147-22.655-31.643zM83.433 331.94H33.437c-6.306 0-11.437-5.13-11.437-11.436v-78.61c0-6.306 5.131-11.436 11.437-11.436h49.996V331.94zM490 320.504c0 6.306-5.131 11.436-11.436 11.436h-49.996V230.458h49.996c6.306 0 11.436 5.13 11.436 11.436v78.61z"></path><path d="M256 491.262a11.001 11.001 0 0 1-8.402-3.9l-52.108-61.671h-74.566c-20.673 0-37.491-16.818-37.491-37.49V188.049c0-20.673 16.818-37.491 37.491-37.491h270.154c20.672 0 37.49 16.818 37.49 37.491V388.2c0 20.672-16.818 37.49-37.49 37.49h-74.566l-52.108 61.671a11.006 11.006 0 0 1-8.404 3.901zM120.923 172.558c-8.542 0-15.491 6.949-15.491 15.491V388.2c0 8.541 6.949 15.49 15.491 15.49h79.673c3.238 0 6.312 1.427 8.402 3.9L256 463.218l47.002-55.627a10.998 10.998 0 0 1 8.402-3.9h79.673c8.541 0 15.49-6.949 15.49-15.49V188.049c0-8.542-6.949-15.491-15.49-15.491H120.923z"></path><path d="M193.81 259.09c-8.663.084-14.039-9.956-9.139-17.11 4.134-6.475 14.16-6.434 18.29 0 4.892 7.164-.483 17.196-9.151 17.11zM311.729 259.09c-7.629.166-13.258-8.219-10.16-15.21 3.614-8.972 16.705-8.978 20.31 0 3.113 6.979-2.526 15.376-10.15 15.21zM256 352.204c-25.31 0-50.619-10.009-73.192-30.028-4.545-4.03-4.962-10.982-.931-15.528 4.029-4.545 10.982-4.962 15.528-.931 36.689 32.536 80.501 32.538 117.19 0 4.547-4.031 11.497-3.614 15.528.931 4.031 4.546 3.614 11.498-.931 15.528-22.572 20.019-47.882 30.028-73.192 30.028z"></path></svg>
									</div>
									<div class="info-content">
										<span>24/7 SUPPORT</span>
										<h6 class="title mb-0">+254 705 027 335</h6>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>

				<!-- header search nav -->
				<div class="header-search-nav">
					<form class="header-item-search" action="{{route('search-product')}}" method="POST">
                        @csrf
						<div class="input-group search-input">
							<select class="default-select" name="category_id">
								<option>All Categories</option>
                                <?php
                                    $CatList = DB::table('categories')->get();
                                ?>
                                @foreach ($CatList as $catlist)
                                <option value="{{$catlist->id}}">{{$catlist->title}} </option>
                                @endforeach
							</select>
							<input type="text" name="keyword" class="form-control" aria-label="Text input with dropdown button" placeholder="Search for products">
							<button class="btn" type="submit">
								<i class="iconly-Light-Search text-secondary"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Main Header End -->

		<!-- Main Header -->
		<div class="sticky-header main-bar-wraper navbar-expand-lg">
			<div class="main-bar clearfix">
				<div class="container clearfix d-lg-flex d-block">
					<!-- Website Logo -->
					<div class="logo-header logo-dark">
						<a href="{{url('/')}}"><img src="{{asset('theme/images/e13dcf4f-46b6-4115-8b72-84ab4e394812.jpeg')}}" alt="Wakazi Works"></a>
					</div>

					<!-- Nav Toggle Button -->
					<button class="navbar-toggler collapsed navicon justify-content-end" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
						<span></span>
						<span></span>
						<span></span>
					</button>

					<!-- Main Nav -->
					<div class="header-nav w3menu navbar-collapse collapse justify-content-start" id="navbarNavDropdown">
						<div class="logo-header">
							<a href="{{url('/')}}"><img src="{{asset('theme/images/e13dcf4f-46b6-4115-8b72-84ab4e394812.jpeg')}}" alt="Wakazi Works"></a>
						</div>
						<div class="browse-category-menu">
							<a href="javascript:void(0);" class="category-btn">
								<div class="category-menu me-3">
									<span></span>
									<span></span>
									<span></span>
								</div>
								<span class="category-btn-title">
									Browse Collections
								</span>
								<span class="toggle-arrow ms-auto">
									<i class="icon feather icon-chevron-down"></i>
								</span>
							</a>
							<div class="category-menu-items" style="display: none;">
								<ul class="nav navbar-nav">
                                    @foreach ($CatList as $catlist)
									<li class="has-mega-menu cate-drop">
										<a href="{{url('/')}}/products/{{$catlist->slung}}">
											<i class="icon feather icon-arrow-right"></i>
											<span>{{$catlist->title}}</span>
											<span class="menu-icon">
												<i class="icon feather icon-chevron-right"></i>
											</span>
										</a>
										<div class="mega-menu">
											<div class="row">
                                                <?php
                                                    $SubCatList = DB::table('sub_categories')->where('category_id',$catlist->id)->get();
                                                ?>
                                                @foreach ($SubCatList as $subCatList)
                                                <div class="col-md-3 col-sm-4 col-6"><a href="javascript:void(0);" class="menu-title">{{$subCatList->title}}</a>
                                                    <?php
                                                       $GetProducts = DB::table('products')->where('category',$catlist->id)->where('sub_category_id', $subCatList->id)->inRandomOrder()->limit(10)->get();
                                                    ?>
													<ul>
                                                        @foreach ($GetProducts as $getProducts)
                                                        <li><a href="{{url('/')}}/product/{{$getProducts->slung}}">{{$getProducts->name}}</a></li>
                                                        @endforeach


													</ul>
												</div>
                                                @endforeach
											</div>
										</div>
									</li>
                                    @endforeach


									<?php
                                      $Main = \App\Models\Main::InRandomOrder()->limit(1)->get();
                                    ?>
                                    @foreach ($Main as $main)
                                    <li>
										<a href="shop-standard.html">
											<i class="icon feather icon-arrow-right"></i>
											<span>{{$main->title}}</span>
										</a>
									</li>
                                    @endforeach

									<li class="menu-items">
										<a href="javascript:void(0);">
											<i class="flaticon-blocks me-3"></i>
											<span>More</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<ul class="nav navbar-nav">
							{{-- <li class="has-mega-menu sub-menu-down auto-width menu-left">
								<a href="{{url('/')}}"><span>Home</span></a>
							</li> --}}

                            <?php
                                $Main = DB::table('mains')->inRandomOrder()->limit(4)->get();
                            ?>
                            @foreach ($Main as $mains)
                            <li class="sub-menu-down"><a href="{{url('/')}}/products-class/{{$mains->slung}}">{{$mains->title}}</a></li>
                            @endforeach
                            <li class="sub-menu-down">
								<a href="{{route('county-bounty')}}"><span>County Bounty</span>  </a>
							</li>
                            <li class="sub-menu-down">
								<a href="{{route('artisan-voices')}}"><span>Artisan Voices</span>  </a>
							</li>
                            {{-- <li class="sub-menu-down">
								<a href="javascript:void(0);"><span>News Updates</span>  </a>
							</li>
                            <li class="sub-menu-down">
								<a href="javascript:void(0);"><span>Our Story</span>  </a>
							</li> --}}

						</ul>
						<div class="dz-social-icon">
							<ul>
								<li><a class="fab fa-facebook-f" target="_blank" href="#"></a></li>
								<li><a class="fab fa-twitter" target="_blank" href="#"></a></li>
								<li><a class="fab fa-linkedin-in" target="_blank" href="#"></a></li>
								<li><a class="fab fa-instagram" target="_blank" href="#"></a></li>
							</ul>
						</div>
					</div>

					<!-- EXTRA NAV -->
					<div class="extra-nav">
						<div class="extra-cell">
							<ul class="header-right">
								{{-- <li class="nav-item login-link">
									@if(Auth::User())
                                    <a class="nav-link" href="{{url('/')}}/dashboard">
										<span class="fa fa-user"> </span> &nbsp; Hello, {{Auth::User()->name}}
									</a>
                                    @else
									<a class="nav-link" href="{{url('/')}}/login-select">
										Login / Register
									</a>
                                    @endif
								</li> --}}

								<li class="nav-item cart-link">
									<a href="{{url('/')}}/cart/shopping-cart" class="nav-link cart-btn" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
										<i class="iconly-Broken-Buy"></i>
										<span class="badge badge-circle">{{Cart::count()}}</span>
									</a>
								</li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- Main Header End -->




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

		<!-- Sidebar finter -->
		<div class="offcanvas dz-offcanvas offcanvas offcanvas-end " tabindex="-1" id="offcanvasLeft">
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
				&times;
			</button>
			<div class="offcanvas-body">
				<div class="product-description">
					<div class="widget widget_search">
						<div class="form-group">
							<div class="input-group">
								<input name="dzSearch" required="required" type="search" class="form-control" placeholder="Search Product">
								<div class="input-group-addon">
									<button name="submit" value="Submit" type="submit" class="btn">
										<i class="icon feather icon-search"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="widget">
						<h6 class="widget-title">Price</h6>
						<div class="price-slide range-slider">
							<div class="price">
								<div class="range-slider style-1">
									<div id="slider-tooltips" class="mb-3"></div>
									<span class="example-val" id="slider-margin-value-min"></span>
									<span class="example-val" id="slider-margin-value-max"></span>
								</div>
							</div>
						</div>
					</div>
					<div class="widget">
						<h6 class="widget-title">Color</h6>
						<div class="d-flex align-items-center flex-wrap color-filter ps-2">
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="#000000" aria-label="..." checked="">
								<span></span>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel2" value="#9BD1FF" aria-label="...">
								<span></span>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel3" value="#21B290" aria-label="...">
								<span></span>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel4" value="#FEC4C4" aria-label="...">
								<span></span>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel5" value="#FF7354" aria-label="...">
								<span></span>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel6" value="#51EDC8" aria-label="...">
								<span></span>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel7" value="#B77CF3" aria-label="...">
								<span></span>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel8" value="#FF4A76" aria-label="...">
								<span></span>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel9" value="#3E68FF" aria-label="...">
								<span></span>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabe20" value="#7BEF68" aria-label="...">
								<span></span>
							</div>
						</div>
					</div>
					<div class="widget">
						<h6 class="widget-title">Size</h6>
						<div class="btn-group product-size">
							<input type="radio" class="btn-check" name="btnradio1" id="btnradio11" checked="">
							<label class="btn" for="btnradio11">4</label>

							<input type="radio" class="btn-check" name="btnradio1" id="btnradio21">
							<label class="btn" for="btnradio21">6</label>

							<input type="radio" class="btn-check" name="btnradio1" id="btnradio31">
							<label class="btn" for="btnradio31">8</label>

							<input type="radio" class="btn-check" name="btnradio1" id="btnradio41">
							<label class="btn" for="btnradio41">10</label>

							<input type="radio" class="btn-check" name="btnradio1" id="btnradio51">
							<label class="btn" for="btnradio51">12</label>

							<input type="radio" class="btn-check" name="btnradio1" id="btnradio61">
							<label class="btn" for="btnradio61">14</label>

							<input type="radio" class="btn-check" name="btnradio1" id="btnradio71">
							<label class="btn" for="btnradio71">16</label>

							<input type="radio" class="btn-check" name="btnradio1" id="btnradio81">
							<label class="btn" for="btnradio81">18</label>

							<input type="radio" class="btn-check" name="btnradio1" id="btnradio91">
							<label class="btn" for="btnradio91">20</label>
						</div>
					</div>
					<div class="widget widget_categories">
						<h6 class="widget-title">Category</h6>
						<ul>
							<li class="cat-item cat-item-26"><a href="blog-category.html">Dresses</a> (10)</li>
							<li class="cat-item cat-item-36"><a href="blog-category.html">Top &amp; Blouses</a> (5)</li>
							<li class="cat-item cat-item-43"><a href="blog-category.html">Boots</a> (17)</li>
							<li class="cat-item cat-item-27"><a href="blog-category.html">Jewelry</a> (13)</li>
							<li class="cat-item cat-item-40"><a href="blog-category.html">Makeup</a> (06)</li>
							<li class="cat-item cat-item-40"><a href="blog-category.html">Fragrances</a> (17)</li>
							<li class="cat-item cat-item-40"><a href="blog-category.html">Shaving &amp; Grooming</a> (13)</li>
							<li class="cat-item cat-item-43"><a href="blog-category.html">Jacket</a> (06)</li>
							<li class="cat-item cat-item-36"><a href="blog-category.html">Coat</a> (22)</li>
						</ul>
					</div>
					<div class="widget widget_tag_cloud">
						<h6 class="widget-title">Tags</h6>
						<div class="tagcloud">
							<a href="blog-tag.html">Vintage </a>
							<a href="blog-tag.html">Wedding</a>
							<a href="blog-tag.html">Cotton</a>
							<a href="blog-tag.html">Linen</a>
							<a href="blog-tag.html">Navy</a>
							<a href="blog-tag.html">Urban</a>
							<a href="blog-tag.html">Business Meeting</a>
							<a href="blog-tag.html">Formal</a>
						</div>
					</div>
					<a href="javascript:void(0);" class="btn btn-sm font-14 btn-secondary btn-sharp">RESET</a>
				</div>
			</div>
		</div>
		<!-- filter sidebar -->
	</header>
	<!-- Header End -->
