<!-- Footer -->
	<footer class="site-footer bg-light">
		<!-- Footer Top -->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
						<div class="widget widget_about me-2">
							<div class="footer-logo logo-dark">
								<a href="{{url('/')}}"><img src="{{asset('theme/images/e13dcf4f-46b6-4115-8b72-84ab4e394812.jpeg')}}" alt=""></a>
							</div>
							<ul class="widget-address">
								<li>
									<p><span>Address</span> : 3721, Mamlaka Road, Off Statehouse Road</p>
								</li>
								<li>
									<p><span>E-mail</span> : <a href="mail:info@wakazi.co.ke">info@wakazi.co.ke</a></p>
								</li>
								<li>
									<p><span>Phone</span> : +254 705 027 335</p>
								</li>
							</ul>
							<div class="subscribe_widget">
								<h6 class="title fw-medium text-capitalize">subscribe to our newsletter</h6>
								<form class="dzSubscribe style-1" action="script/mailchamp.php" method="post">
									<div class="dzSubscribeMsg"></div>
									<div class="form-group">
										<div class="input-group mb-0">
											<input name="dzEmail" required="required" type="email" class="form-control" placeholder="Your Email Address">
											<div class="input-group-addon">
												<button name="submit" value="Submit" type="submit" class="btn">
													<i class="icon feather icon-arrow-right"></i>
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.2s">
						<div class="widget widget_post">
							<h5 class="footer-title">Recent Updates</h5>
							<ul>
								<li>
									<div class="dz-media">
										<img src="{{asset('theme/images/shop/product/small/1.png')}}" alt="">
									</div>
									<div class="dz-content">
										<h6 class="name"><a href="#">Some Update About Creatives 1</a></h6>
										<span class="time">July 23, 2024</span>
									</div>
								</li>
								<li>
									<div class="dz-media">
										<img src="{{asset('theme/images/shop/product/small/1.png')}}" alt="">
									</div>
									<div class="dz-content">
										<h6 class="name"><a href="post-standard.html">Some Update About Creatives 2</a></h6>
										<span class="time">July 23, 2024</span>
									</div>
								</li>
								<li>
									<div class="dz-media">
										<img src="{{asset('theme/images/shop/product/small/1.png')}}" alt="">
									</div>
									<div class="dz-content">
										<h6 class="name"><a href="post-standard.html">Some Update About Creatives 3</a></h6>
										<span class="time">July 23, 2024</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
                    <div class="col-xl-2 col-md-3 col-sm-4 wow fadeInUp" data-wow-delay="0.5s">
						<div class="widget widget_services">
							<h5 class="footer-title">Collections</h5>
                            <?php
                                $Main = DB::table('mains')->limit(6)->get();
                            ?>
							<ul>
                                @foreach ($Main as $main)
                                <li><a href="javascript:void(0);">{{$main->title}}</a></li>
                                @endforeach

							</ul>
						</div>
					</div>
					<div class="col-xl-2 col-md-3 col-sm-4 col-6 wow fadeInUp" data-wow-delay="0.3s">
						<div class="widget widget_services">
							<h5 class="footer-title">About Wakazi</h5>
							<ul>
								<li><a href="javascript:void(0);">About Us</a></li>
								<li><a href="javascript:void(0);">Our Locations</a></li>
								<li><a href="{{route('become-supplier')}}">Become Supplier</a></li>
								<li><a href="javascript:void(0);">Chat with us</a></li>
								<li><a href="javascript:void(0);">Contact Us</a></li>
								<li><a href="javascript:void(0);">Forum</a></li>
							</ul>
						</div>
					</div>
					<div class="col-xl-2 col-md-3 col-sm-4 col-6 wow fadeInUp" data-wow-delay="0.4s">
						<div class="widget widget_services">
							<h5 class="footer-title">Legal</h5>
							<ul>
								<li><a href="javascript:void(0);">Privacy Policy</a></li>
								<li><a href="javascript:void(0);">Copyright Statement</a></li>
								<li><a href="javascript:void(0);">Terms & Conditions</a></li>
								<li><a href="javascript:void(0);">Returns and Refunds Policy Us</a></li>
								<li><a href="javascript:void(0);">Delivery</a></li>
								<li><a href="javascript:void(0);"> Sitemap</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- Footer Top End -->

		<!-- Footer Bottom -->
		<div class="footer-bottom">
			<div class="container">
				<div class="row fb-inner wow fadeInUp" data-wow-delay="0.1s">
					<div class="col-lg-6 col-md-12 text-start">
						<p class="copyright-text">Copyright © <span class="current-year">{{date('Y')}}</span> <a href="https://www.wakaziworks.com/">Wakazi Works </a> . All Rights Reserved.</p>
					</div>
					<div class="col-lg-6 col-md-12 text-end">
						<div class="d-flex align-items-center justify-content-center justify-content-md-center justify-content-xl-end">
							<span class="me-3">We Accept: </span>
							<img style="width:80px;" src="{{asset('theme/images/shop/mpesa-logo.png')}}" alt="We Accept Mpesa">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Bottom End -->

	</footer>
	<!-- Footer End -->
