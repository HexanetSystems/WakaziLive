
<!DOCTYPE html>
<html lang="en">
<head>

	<!-- Title -->
	<title>Wakazi Works: Your one stop shop for all your handcrafted products</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="author" content="wakaziworks">
	<meta name="robots" content="index, follow">
	<meta name="format-detection" content="telephone=no">
    <!-- MOBILE SPECIFIC -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- FAVICONS ICON -->
	<link rel="icon" type="image/x-icon" href="{{asset('theme/images/favicon.png')}}">

	<meta name="keywords" content="template, ui kit, clothing, delivery, ecommerce, fashion, order, shopping, store, fashion design, fashion store, responsive design, fashion showcase, modern design, fashion technology, e-shop, ecommerce web, eCommerce Website, minimal shop, online shop, online shopping, pixio, user experience, Design Elements, Trendy, Stylish, User-Friendly, Navigation, Product Display, Branding, Development, Visual Design, UI/UX, Website, Web Design">
	<meta name="description" content="Wakazi connects creative artisans with global audiences, revolutionizing the reach of handcrafted products. Join Wakazi in supporting creativity, community, and commerce across Africa.">

	<meta property="og:title" content="Wakazi Works: Your one stop shop for all your handcrafted products">
	<meta property="og:description" content="Wakazi connects creative artisans with global audiences, revolutionizing the reach of handcrafted products. Join Wakazi in supporting creativity, community, and commerce across Africa.">
	<meta property="og:image" content="{{url('/')}}/theme/images/e13dcf4f-46b6-4115-8b72-84ab4e394812.jpeg">

	<!-- TWITTER META -->
	<meta name="twitter:title" content="Wakazi Works: Your one stop shop for all your handcrafted products">
	<meta name="twitter:description" content="Wakazi connects creative artisans with global audiences, revolutionizing the reach of handcrafted products. Join Wakazi in supporting creativity, community, and commerce across Africa.">
	<meta name="twitter:image" content="{{url('/')}}/theme/images/e13dcf4f-46b6-4115-8b72-84ab4e394812.jpeg">
	<meta name="twitter:card" content="summary_large_image">

    <!-- GOOGLE FONTS-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">


	<!-- STYLESHEETS -->
	<link rel="stylesheet" type="text/css" href="{{asset('theme/icons/iconly/index.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('theme/vendor/magnific-popup/magnific-popup.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('theme/vendor/bootstrap-select/dist/css/bootstrap-select.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('theme/vendor/swiper/swiper-bundle.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('theme/vendor/nouislider/nouislider.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('theme/vendor/animate/animate.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('theme/vendor/lightgallery/dist/css/lightgallery.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('theme/vendor/lightgallery/dist/css/lg-thumbnail.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('theme/vendor/lightgallery/dist/css/lg-zoom.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('theme/vendor/slick/slick.css')}}">

	<!-- Custom Stylesheet -->
	<link class="main-css" rel="stylesheet" type="text/css" href="{{asset('theme/css/style.css')}}">
	<link class="skin" type="text/css" rel="stylesheet" href="{{asset('theme/css/skin/skin-1.css')}}">

</head>
<body id="bg">
<div class="page-wraper">

	{{-- <div id="loading-area" class="preloader-wrapper-4">
		<img width="300" src="{{asset('theme/images/logo.png')}}" alt="wakazi.co.ke logo"><br><br>

	</div> --}}

	<!-- Header Star -->
	@include('front.header')
	<!-- Header End -->

    @yield('content')

	<!-- Footer -->
    @include('front.footer')


	<button class="scroltop" type="button"><i class="fas fa-arrow-up"></i></button>

    {{-- @foreach ($Product as $product)
	<!-- Quick Modal Start -->
	<div class="modal quick-view-modal fade" id="exampleModal_{{$product->id}}" tabindex="-1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
					<i class="icon feather icon-x"></i>
				</button>
				<div class="modal-body">
					<div class="row g-xl-4 g-3">
						<div class="col-xl-6 col-md-6">
							<div class="dz-product-detail mb-0">
								<div class="swiper-btn-center-lr">
									<div class="swiper quick-modal-swiper2">
										<div class="swiper-wrapper" id="lightgallery">
											<div class="swiper-slide">
												<div class="dz-media DZoomImage">
													<a class="mfp-link lg-item" href="{{$product->image_one}}" data-src="{{$product->image_one}}">
														<i class="feather icon-maximize dz-maximize top-right"></i>
													</a>
													<img style="height: 528px; object-fit:cover" src="{{$product->image_one}}" alt="{{$product->title}}">
												</div>
											</div>
                                            <?php
                                               $Gallery = DB::table('galleries')->where('product_id',$product->id)->limit('2')->get();
                                            ?>
                                            @foreach ($Gallery as $gallery)
                                            <div class="swiper-slide">
												<div class="dz-media DZoomImage">
													<a class="mfp-link lg-item" href="{{url('/')}}/images/{{$gallery->image}}" data-src="{{url('/')}}/images/{{$gallery->image}}">
														<i class="feather icon-maximize dz-maximize top-right"></i>
													</a>
													<img style="max-height: 528px;" src="{{url('/')}}/images/{{$gallery->image}}" alt="{{$product->title}}">
												</div>
											</div>
                                            @endforeach
										</div>
									</div>
									<div class="swiper quick-modal-swiper thumb-swiper-lg thumb-sm swiper-vertical">
										<div class="swiper-wrapper">
											<div class="swiper-slide">
												<img style="width:48px; height:48px; object-fit:cover" src="{{$product->image_one}}" alt="image">
											</div>
                                            @foreach ($Gallery as $gallery)
											<div class="swiper-slide">
												<img style="width:48px; height:48px; object-fit:cover" src="{{url('/')}}/images/{{$gallery->image}}" alt="{{$product->title}}">
											</div>
                                            @endforeach
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-md-6">
							<div class="dz-product-detail style-2 ps-xl-3 ps-0 pt-2 mb-0">
								<div class="dz-content">
									<div class="dz-content-footer">
										<div class="dz-content-start">

											<h4 class="title mb-1" style="width:400px"><a href="shop-list.html">{{$product->name}}</a></h4>

										</div>
									</div>
									<p class="para-text">
										{{$product->meta}}
									</p>
									<div class="meta-content m-b20 d-flex align-items-end">
										<div class="me-3">
											<span class="form-label">Price</span>
											<span class="price">ksh {{$product->price}}
                                                <del>$132.17</del>
                                            </span>
										</div>
										<div class="btn-quantity light me-0">
											<label class="form-label">Quantity</label>
											<input  type="text" value="1" name="demo_vertical2">
										</div>
									</div>
									<div class=" cart-btn">
										<a href="shop-cart.html" class="btn btn-secondary text-uppercase">Add To Cart</a>
									</div>
									<div class="dz-info mb-0">
										<ul>
											<li><strong>SKU:</strong></li>
											<li>{{$product->sku}}</li>
										</ul>
                                        <?php $Category = \App\Models\Category::find($product->category) ?>
                                        <ul>
                                            <li><strong>Category:</strong></li>
                                            <li><a href="{{url('/')}}/products/{{$Category->slung}}">{{$Category->title}},</a></li>

                                        </ul>
										<ul>
											<li><strong>Tags:</strong></li>

										</ul>
										<div class="dz-social-icon">
											<ul class="social-icon">
                                                <li><strong>Share:</strong></li>
                                                <li>
                                                    <a href="https://www.facebook.com/wakaziworks" target="_blank">
                                                        <i class="fa-brands fa-facebook-f"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://www.linkedin.com/showcase/3686700/admin/" target="_blank">
                                                        <i class="fa-brands fa-linkedin-in"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://www.instagram.com/wakaziworks/" target="_blank">
                                                        <i class="fa-brands fa-instagram"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://twitter.com/wakaziworkss" target="_blank">
                                                        <i class="fa-brands fa-twitter"></i>
                                                    </a>
                                                </li>
                                            </ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    @endforeach --}}



</div>
<!-- JAVASCRIPT FILES ========================================= -->
<script data-cfasync="false" src="{{asset('cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js')}}"></script>
<script src="{{asset('theme/js/jquery.min.js')}}"></script><!-- JQUERY MIN JS -->
<script src="{{asset('theme/vendor/wow/wow.min.js')}}"></script><!-- WOW JS -->
<script src="{{asset('theme/vendor/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script><!-- BOOTSTRAP MIN JS -->
<script src="{{asset('theme/vendor/bootstrap-select/dist/js/bootstrap-select.min.js')}}"></script><!-- BOOTSTRAP SELECT MIN JS -->
<script src="{{asset('theme/vendor/bootstrap-touchspin/bootstrap-touchspin.js')}}"></script><!-- BOOTSTRAP TOUCHSPIN JS -->
<script src="{{asset('theme/vendor/counter/waypoints-min.js')}}"></script><!-- WAYPOINTS JS -->
<script src="{{asset('theme/vendor/counter/counterup.min.js')}}"></script><!-- COUNTERUP JS -->
<script src="{{asset('theme/vendor/swiper/swiper-bundle.min.js')}}"></script><!-- SWIPER JS -->
<script src="{{asset('theme/vendor/magnific-popup/magnific-popup.js')}}"></script><!-- MAGNIFIC POPUP JS -->
<script src="{{asset('theme/vendor/imagesloaded/imagesloaded.js')}}"></script><!-- IMAGESLOADED-->
<script src="{{asset('theme/vendor/masonry/masonry-4.2.2.js')}}"></script><!-- MASONRY -->
<script src="{{asset('theme/vendor/masonry/isotope.pkgd.min.js')}}"></script><!-- ISOTOPE -->
<script src="{{asset('theme/vendor/countdown/jquery.countdown.js')}}"></script><!-- COUNTDOWN FUCTIONS  -->
<script src="{{asset('theme/vendor/wnumb/wNumb.js')}}"></script><!-- WNUMB -->
<script src="{{asset('theme/vendor/nouislider/nouislider.min.js')}}"></script><!-- NOUSLIDER MIN JS-->
<script src="{{asset('theme/vendor/slick/slick.min.js')}}"></script><!-- CAROUSEL MIN JS -->
<script src="{{asset('theme/vendor/lightgallery/dist/lightgallery.min.js')}}"></script>
<script src="{{asset('theme/vendor/lightgallery/dist/plugins/thumbnail/lg-thumbnail.min.js')}}"></script>
<script src="{{asset('theme/vendor/lightgallery/dist/plugins/zoom/lg-zoom.min.js')}}"></script>
<script src="{{asset('theme/js/dz.carousel.js')}}"></script><!-- DZ CAROUSEL JS -->
<script src="{{asset('theme/js/dz.ajax.js')}}"></script><!-- AJAX -->
<script src="{{asset('theme/js/custom.js')}}"></script><!-- CUSTOM JS -->

<script>
    $(document).ready(function() {
        $('.addToCart').click(function(e) {
            e.preventDefault();
            $(".loading-gif-cart").show();
            $('#Success').html('Please wait.........');
            setTimeout(function() {
                $('#Success').html('Checkout your phone....');
            }, 4000);
            // Serialize the form data
            var formData = $(this).serialize();
            // Send an AJAX request
            $.ajax({
                type: 'POST',
                url: '{!! url('make-stk-request') !!}',
                data: formData,
                dataType: 'json',
                success: function(response) {
                    // Handle the response message
                    $('#cf-response-message').text(response.message);
                    console.log(data);
                    $('#Loading').hide();
                    $('#Success').hide();
                    setTimeout(function() {
                        $('#Success').show();
                        $('#Success').html('Redirecting you...');
                    }, 1000);
                    // Refresh
                    setTimeout(function() {
						window.location = "{{url('/thankYou')}}"
                    }, 5000);
                    // Success
                },
                error: function(xhr, status, error) {
                    // Handle errors if needed
                    console.error(xhr.responseText);
                }
            });
        });
    });
</script>
</body>
</html>
