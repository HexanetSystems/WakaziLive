<!-- Footer -->
	{{-- <footer class="site-footer bg-light"> --}}
        <footer class="site-footer">
            <!-- Footer Top -->
            <div class="footer-top" style="background-color: rgba(235, 184, 244, 0.99);" >
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
                                    <?php
                                    $BlogList = DB::table('blogs')->orderBy('id','DESC')->limit('3')->get();
                                    ?>
                                    @foreach ($BlogList as $blogList)
                                    <li>
                                        <div class="dz-media">
                                            <img src="{{$blogList->image_one}}" alt="">
                                        </div>
                                        <div class="dz-content">
                                            <h6 class="name"><a href="{{url('/')}}/news-updates/{{$blogList->slung}}">{{$blogList->title}}</a></h6>
                                            <span class="time">{{date('M d, Y', strtotime($blogList->created_at))}}</span>
                                        </div>
                                    </li>
                                    @endforeach


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
                                    <li><a href="{{route('about')}}">About Us</a></li>
                                    <li><a href="{{route('county-bounty')}}">County Bounty</a></li>
                                    <li><a href="{{route('become-supplier')}}">Become a Supplier</a></li>
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
                                    <li><a href="{{route('legals')}}">Privacy Policy</a></li>
                                    <li><a href="{{route('legals')}}">Copyright Statement</a></li>
                                    <li><a href="{{route('legals')}}">Terms & Conditions</a></li>
                                    <li><a href="{{route('legals')}}">Returns and Refunds Policy Us</a></li>
                                    <li><a href="{{route('legals')}}">Delivery</a></li>
                                    <li><a href="{{route('legals')}}"> Sitemap</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- Footer Top End -->

            <style>
                .dz-social-icon.style-1 li a {
                    background-color: #501ba5;
                    color: #fff;
                }
                .dz-social-icon li a i {
                    color: #fff;
                }
            </style>
            {{--  --}}
            <div style="padding-bottom:20px; background-color: rgba(235, 184, 244, 0.99);">
                <div class="dz-social-icon style-1" style="margin:0 auto">
                    <ul style="margin:0 auto">
                        <li>
                            <a href="https://www.facebook.com/profile.php?id=61563555572188" target="_blank">
                                <i class="fa-brands fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" target="_blank">
                                <i class="fa-brands fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.linkedin.com/company/wakazi-works-platform/posts/?feedView=all" target="_blank">
                                <i class="fa-brands fa-linkedin"></i>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/wakazi_works/" target="_blank">
                                <i class="fa-brands fa-instagram"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            {{--  --}}

            <!-- Footer Bottom -->
            <div class="footer-bottom" style="background-color: rgb(231, 130, 248);">
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
