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
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                <blockquote class="wp-block-quote is-style-default"><p>Create An Information Architecture That’s Easy To Use Way Precise Usability Considerations For Partially </p><cite>Ronald M. Spino</cite><i class="flaticon-right-quote"></i></blockquote>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                {{-- <figure class="wp-container-5 wp-block-gallery-3 wp-block-gallery has-nested-images columns-3 is-cropped">
                                    <figure class="wp-block-image size-large"><img src="images/blog/blogpost-3/pic1.jpg" alt="/"></figure>
                                    <figure class="wp-block-image size-large"><img src="images/blog/blogpost-3/pic2.jpg" alt="/"></figure>
                                    <figure class="wp-block-image size-large"><img src="images/blog/blogpost-3/pic3.jpg" alt="/"></figure>
                                    <figure class="wp-block-image size-large"><img src="images/blog/blogpost-3/pic4.jpg" alt="/"></figure>
                                    <figure class="wp-block-image size-large"><img src="images/blog/blogpost-3/pic1.jpg" alt="/"></figure>
                                </figure> --}}
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

                                <h3 class="dz-title">Additional information</h3>
                                <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

                                <ul class="list-check-2 check-circle">
                                    <li>Sustainable Materials and Eco-Friendly Fabrics</li>
                                    <li>Promoting Fair Labor Practices in Fashion</li>
                                    <li>The Three R's in Sustainable Fashion</li>
                                    <li>Capsule Wardrobes Curating Timeless Style</li>
                                    <li>Transparency in Fashion Supply Chains</li>
                                    <li>Vegan and Cruelty-Free Fashion Alternatives</li>
                                </ul>

                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                            </div>
                            <div class="dz-share-post meta-bottom">
                                <div class="post-tags">
                                    <strong>Tags:</strong>
                                    <a href="javascript:void(0);">Dresses</a>
                                    <a href="javascript:void(0);">Boots</a>
                                    <a href="javascript:void(0);">Jewelry</a>
                                    <a href="javascript:void(0);">Jacket</a>
                                    <a href="javascript:void(0);">Coat</a>
                                </div>
                                <div class="dz-social-icon primary-light">
                                    <ul>
                                        <li>
                                            <a href="https://www.facebook.com/dexignzone">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.instagram.com/dexignzone/">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://twitter.com/dexignzones">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.linkedin.com/showcase/3686700/admin/">
                                                <i class="fa-brands fa-linkedin-in"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
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
