
<!DOCTYPE html>
<html lang="en">
<head>

	<!-- Title -->
	<title>Wakazi Works: Your one stop shop for all your handcrafted products | Wakazi</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="author" content="wakaziworks">
	<meta name="robots" content="index, follow">
	<meta name="format-detection" content="telephone=no">
    <!-- MOBILE SPECIFIC -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- FAVICONS ICON -->
	<link rel="icon" type="image/x-icon" href="images/favicon.png')}}">

	<meta name="keywords" content="template, ui kit, clothing, delivery, ecommerce, fashion, order, shopping, store, fashion design, fashion store, responsive design, fashion showcase, modern design, fashion technology, e-shop, ecommerce web, eCommerce Website, minimal shop, online shop, online shopping, pixio, user experience, Design Elements, Trendy, Stylish, User-Friendly, Navigation, Product Display, Branding, Development, Visual Design, UI/UX, Website, Web Design">
	<meta name="description" content="Elevate your online retail presence with Pixio Shop & eCommerce HTML Template. Crafted with precision, this responsive and feature-rich template provides a seamless and visually stunning shopping experience. Explore a world of possibilities with modern design elements, intuitive navigation, and customizable features. Transform your website into a dynamic online storefront with Pixio, where style meets functionality for a captivating and user-friendly eCommerce journey.">

	<meta property="og:title" content="Pixio: Shop & eCommerce Bootstrap HTML Template | wakaziworks">
	<meta property="og:description" content="Elevate your online retail presence with Pixio Shop & eCommerce HTML Template. Crafted with precision, this responsive and feature-rich template provides a seamless and visually stunning shopping experience. Explore a world of possibilities with modern design elements, intuitive navigation, and customizable features. Transform your website into a dynamic online storefront with Pixio, where style meets functionality for a captivating and user-friendly eCommerce journey.">
	<meta property="og:image" content="https://pixio.wakaziworks.com/xhtml/social-image.png">

	<!-- TWITTER META -->
	<meta name="twitter:title" content="Pixio: Shop & eCommerce Bootstrap HTML Template | wakaziworks">
	<meta name="twitter:description" content="Elevate your online retail presence with Pixio Shop & eCommerce HTML Template. Crafted with precision, this responsive and feature-rich template provides a seamless and visually stunning shopping experience. Explore a world of possibilities with modern design elements, intuitive navigation, and customizable features. Transform your website into a dynamic online storefront with Pixio, where style meets functionality for a captivating and user-friendly eCommerce journey.">
	<meta name="twitter:image" content="https://pixio.wakaziworks.com/xhtml/social-image.png">
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


	<!-- Header Star -->
    @include('front.header')
	<!-- Header End -->

    @yield('content')

	<!-- Footer -->
	@include('front.footer')
	<!-- Footer End -->

	<button class="scroltop" type="button"><i class="fas fa-arrow-up"></i></button>



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
        $('#stkDoIt').submit(function(e) {
            e.preventDefault();
            $(".loading-gif").show();
            $('#Success').html('Please wait.........');
            setTimeout(function() {
                $('#Success').html('Check your phone....');
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
                    // $('#cf-response-message').text(response.message);
                    console.log(response);
                    $('.loading-gif').hide();
                    $('#Success').hide();
                    setTimeout(function() {
                        $('#Success').show();
                        $('#Success').html('Redirecting you...');
                    }, 1000);
                    // Refresh
                    setTimeout(function() {
						window.location = "{{url('dashboard/thankYou')}}"
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
