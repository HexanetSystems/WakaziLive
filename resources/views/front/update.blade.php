@extends('front.master')

@section('content')
@foreach ($Blog as $blog)


<div class="page-content bg-light">
    <!--Banner Start-->
    <div class="dz-bnr-inr bg-secondary overlay-black-light" style="background-image:url(images/background/bg1.jpg);">
        <div class="container">
            <div class="dz-bnr-inr-entry">
                <h1>{{$blog->title}}</h1>
                <nav aria-label="breadcrumb" class="breadcrumb-row">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('/')}}"> Home</a></li>
                        <li class="breadcrumb-item">{{$blog->title}}</li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!--Banner End-->
    <section class="content-inner-1 bg-img-fix">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-8">
                    <!-- blog start -->
                    <div class="dz-blog blog-single style-1 sidebar">
                        <h1 class="dz-title">{{$blog->title}}</h1>
                        <div class="dz-meta">
                            <ul>
                                <li class="post-date">{{date('M d, Y', strtotime($blog->created_at))}}</li>
                                <li class="dz-user">
                                    <i class="fa-solid fa-user"></i>
                                    By <a href="javascript:void(0);">Admin</a>
                                </li>

                            </ul>
                        </div>
                        <div class="dz-media rounded">
                            <img src="{{$blog->image_one}}" alt="{{$blog->title}}">
                        </div>
                        <div class="dz-info">
                            <div class="dz-post-text">
                                <p>{!!html_entity_decode($blog->content)!!}</p>
                            </div>

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
@endforeach

@endsection
