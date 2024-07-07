@extends('front.master')

@section('content')

<div class="page-content bg-light">
    @foreach ($Voices as $voice)
    <section class="dz-bnr-inr dz-bnr-inr-sm bg-light">
        <div class="container">
            <div class="dz-bnr-inr-entry ">
                <div class="row align-items-center">
                    <div class="col-lg-10 col-md-10" style="margin:0 auto">
                        <div class="text-start mb-xl-0 mb-4">
                            <h1>Change perception, change society
                            </h1>
                            <nav aria-label="breadcrumb" class="breadcrumb-row">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{url('/')}}"> Home</a></li>
                                    <li class="breadcrumb-item">Artisan Voices</li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="container">
                <div class="dz-media post-audio">
                    <iframe class="rounded" src="https://www.youtube.com/embed/-WEDXrkmFIc" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
    </section>
    @endforeach


    <!--Our Mission Section-->
    <section class="content-inner">
        <div class="container">
            <div class="row about-style2 align-items-xl-center align-items-start">
                <div class="col-lg-6 col-lg-5 col-sm-5 m-b30 sticky-top">
                    <div class="about-thumb">
                        <img src="{{$voice->image}}" alt="County Bounty">
                    </div>
                </div>
                <div class="col-lg-6 col-md-7 col-sm-7">
                    <div class="about-content">
                        <div class="section-head style-2 d-block">
                            {!! $voice->content !!}
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </section>



    <!-- Get In Touch -->
    <section class="get-in-touch">
        <div class="m-r100 m-md-r0 m-sm-r0">
            <h3 class="dz-title mb-lg-0 mb-3">Questions ?
                <span>Our experts will help find the grar that’s right for you</span>
            </h3>
        </div>
        <a href="{{url('/')}}/contact-us" class="btn btn-light">Get In Touch</a>
    </section>
    <!-- Get In Touch End -->


    <section class="content-inner-1 z-index-unset">
        <div class="container">
            <div class="row">
                @foreach ($Blog as $blog)
                <div class="col-xl-4 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="dz-card style-2">
                        <div class="dz-media">
                            <img src="{{$blog->image_one}}" alt="">
                            <div class="post-date">{{date('M d, Y', strtotime($blog->created_at))}}</div>
                        </div>
                        <div class="dz-info">
                            <h4 class="dz-title mb-0">
                                <a href="{{url('/')}}/news-updates/{{$blog->slung}}">{{$blog->title}}</a>
                            </h4>
                            <ul class="blog-social">
                                <li>
                                    <a class="share-btn" href="javascript:void(0);">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none">
                                          <path d="M7 17L17 7" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                          <path d="M7 7H17V17" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </a>
                                    <ul class="sub-team-social">
                                        <li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="https://www.linkedin.com/" target="_blank"><i class="fa-brands fa-linkedin-in"></i></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                @endforeach

                <div class="col-12 text-center mt-sm-4 mt-2 wow fadeInUp" data-wow-delay="1.0s">
                    <a href="blog-dark-3-column.html" class="btn btn-secondary">
                        Loadmore
                    </a>
                </div>
            </div>
        </div>
    </section>

</div>

@endsection
