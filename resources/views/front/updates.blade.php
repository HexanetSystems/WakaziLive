@extends('front.master')

@section('content')
<div class="page-content bg-light">
    <!--Banner Start-->
    <div class="dz-bnr-inr bg-secondary overlay-black-light" style="background-image:url(images/background/bg1.jpg);">
        <div class="container">
            <div class="dz-bnr-inr-entry">
                <h1>News & Updates</h1>
                <nav aria-label="breadcrumb" class="breadcrumb-row">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('/')}}"> Home</a></li>
                        <li class="breadcrumb-item">News & Updates</li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!--Banner End-->

    <section class="content-inner-1 z-index-unset">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-9 col-lg-8">
                    <div class="row">
                        @foreach ($Blog as $blog)
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 m-b30 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="dz-card style-5">
                                <div class="dz-media">
                                    <img src="{{$blog->image_one}}" alt="/">
                                </div>
                                <div class="dz-info">
                                    <div class="dz-meta">
                                        <ul>
                                            <li class="post-date">{{date('M d, Y', strtotime($blog->created_at))}}</li>
                                        </ul>
                                    </div>
                                    <h4 class="dz-title">
                                        <a class="text-white" href="{{url('/')}}/news-updates/{{$blog->slung}}">{{$blog->title}}</a>
                                    </h4>
                                    <a href="{{url('/')}}/news-updates/{{$blog->slung}}" class="font-14 read-btn">Read More
                                        <i class="icon feather icon-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        @endforeach

                        <div class=" col-12 text-center mt-sm-4 mb-sm-4  wow fadeInUp" data-wow-delay="1.0s">
                            <a href="#" class="btn btn-secondary text-center">
                                Loadmore</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4">
                    <aside class="side-bar sticky-top mt-lg-0 mt-md-5 mt-3">
                        <div class="widget">
                            <h5 class="widget-title">Search</h5>
                            <div class="search-bx">
                                <form role="search" method="post">
                                    <div class="input-group">
                                        <input name="text" class="form-control" placeholder="Search" type="text">
                                        <span class="input-group-btn">
                                                <button class="btn">
                                                <i class="icon feather icon-search"></i>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="widget widget_categories style-1">
                            <h5 class="widget-title">Category</h5>
                            <ul>
                                <?php
                                  $Category = DB::table('categories')->get();
                                ?>
                                @foreach ($Category as $category)
                                <li class="cat-item"><a href="#">{{$category->title}}</a> (<?php echo count(DB::table('blogs')->where('category',$category->id)->get()) ?>)</li>
                                @endforeach


                            </ul>
                        </div>

                        <div class="widget widget_tag_cloud">
                            <h5 class="widget-title">Tags</h5>
                            <div class="tagcloud">
                                <a href="#">Vintage </a>
                                <a href="#">Wedding</a>
                                <a href="#">Cotton</a>
                                <a href="#">Linen</a>
                                <a href="#">Navy</a>
                                <a href="#">Urban</a>
                                <a href="#">Classics</a>
                                <a href="#">Formal</a>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>

</div>

@endsection
