@extends('front.master-cart')

@section('content')
@foreach ($Product as $product)
<?php
  $Gallery  =DB::table('galleries')->where('product_id', $product->id)->limit(4)->inRandomOrder()->get();
?>

    <div class="page-content bg-light">

        <div class="d-sm-flex justify-content-between container-fluid py-3">
            <nav aria-label="breadcrumb" class="breadcrumb-row">
                <ul class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"> Home</a></li>
                    <li class="breadcrumb-item">{{$product->name}}</li>
                </ul>
            </nav>
        </div>

        <section class="content-inner py-0">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-4 col-md-4">
                        <div class="dz-product-detail sticky-top">
                            <div class="swiper-btn-center-lr">
                                <div class="swiper product-gallery-swiper2 rounded">
                                    <div class="swiper-wrapper" id="lightgallery2">
                                        <div class="swiper-slide">
                                            <div class="dz-media DZoomImage">
                                                <a class="mfp-link lg-item" href="{{$product->image_one}}" data-src="{{$product->image_one}}">
                                                    <i class="feather icon-maximize dz-maximize top-left"></i>
                                                </a>
                                                <img src="{{$product->image_one}}" alt="image">
                                            </div>
                                        </div>

                                        @foreach ($Gallery as $galleries)
                                        <div class="swiper-slide">
                                            <div class="dz-media DZoomImage">
                                                <a class="mfp-link lg-item" href="{{url('/')}}/images/{{$galleries->image}}" data-src="{{url('/')}}/images/{{$galleries->image}}">
                                                    <i class="feather icon-maximize dz-maximize top-left"></i>
                                                </a>
                                                <img src="{{url('/')}}/images/{{$galleries->image}}" alt="{{$product->name}}">
                                            </div>
                                        </div>
                                        @endforeach

                                    </div>
                                </div>
                                <div class="swiper product-gallery-swiper thumb-swiper-lg">
                                    <div class="swiper-wrapper">
                                        @foreach ($Gallery as $galleries)
                                        <div class="swiper-slide">
                                            <img src="{{url('/')}}/images/{{$galleries->image}}" alt="{{$product->name}}">
                                        </div>
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8 col-md-8">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="dz-product-detail style-2 p-t20 ps-0">
                                    <div class="dz-content">
                                        <div class="dz-content-footer">
                                            <div class="dz-content-start">
                                                {{-- <span class="badge bg-secondary mb-2">SALE 20% Off</span> --}}
                                                <h4 class="title mb-1">{{$product->name}}</h4>
                                                <div class="review-num">
                                                    <ul class="dz-rating me-2">
                                                        <li class="star-fill">
                                                            <i class="flaticon-star-1"></i>
                                                        </li>
                                                        <li class="star-fill">
                                                            <i class="flaticon-star-1"></i>
                                                        </li>
                                                        <li class="star-fill">
                                                            <i class="flaticon-star-1"></i>
                                                        </li>
                                                        <li class="star-fill">
                                                            <i class="flaticon-star-1"></i>
                                                        </li>
                                                        <li class="star-fill">
                                                            <i class="flaticon-star-1"></i>
                                                        </li>
                                                    </ul>
                                                    <span class="text-secondary me-2">4.9 Rating</span>
                                                    <a href="javascript:void(0);">(5 customer reviews)</a>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="para-text">
                                           {{$product->meta}}
                                        </p>
                                        <hr>
                                        <p class="para-text">
                                            {{$product->meta}}
                                         </p>


                                        <div class="dz-info">
                                            <ul>
                                                <li><strong>SKU:</strong></li>
                                                <li>{{$product->sku}}</li>
                                            </ul>
                                            <?php $Category = \App\Models\Category::find($product->category) ?>
                                            <ul>
                                                <li><strong>Category:</strong></li>
                                                <li><a href="{{url('/')}}/products/{{$Category->slung}}">{{$Category->title}},</a></li>
                                                {{-- <li><a href="shop-standard.html">Jeans,</a></li>
                                                <li><a href="shop-standard.html">Swimwear,</a></li>
                                                <li><a href="shop-standard.html">Summer,</a></li>
                                                <li><a href="shop-standard.html">Clothing,</a></li> --}}
                                            </ul>
                                            <ul>
                                                <li><strong>Tags:</strong></li>
                                                {{-- <li><a href="shop-standard.html">Casual,</a></li>
                                                <li><a href="shop-standard.html">Athletic,</a></li>
                                                <li><a href="shop-standard.html">Workwear,</a></li>
                                                <li><a href="shop-standard.html">Accessories,</a></li> --}}
                                            </ul>
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
                                    <div class="banner-social-media">
                                        <ul>
                                            <li>
                                                <a href="https://www.instagram.com/wakaziworks/">Instagram</a>
                                            </li>
                                            <li>
                                                <a href="https://www.facebook.com/wakaziworks">Facebook</a>
                                            </li>
                                            <li>
                                                <a href="https://twitter.com/wakaziworkss">twitter</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-5">
                                <div class="cart-detail">
                                    <a href="javascript:void(0);" class="btn btn-outline-secondary w-100 m-b20">Secured Payment Guaranteed</a>


                                    <div class="save-text">
                                        <i class="icon feather icon-check-circle"></i>
                                        <span class="m-l10">Best price guaranteed</span>
                                    </div>
                                    <div class="save-text">
                                        <i class="icon feather icon-check-circle"></i>
                                        <span class="m-l10">Speedy Delivery</span>
                                    </div>
                                    <div class="save-text">
                                        <i class="icon feather icon-check-circle"></i>
                                        <span class="m-l10">100% Handcrafted</span>
                                    </div>

                                    <table>
                                        <tbody>
                                            <tr class="total">
                                                <td>
                                                    <h6 class="mb-0">Total</h6>
                                                </td>
                                                <td class="price">
                                                    kes {{$product->price}}
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    {{-- <a href="shop-wishlist.html" class="btn btn-outline-secondary btn-icon m-b20">
                                        <svg width="19" height="17" viewbox="0 0 19 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M9.24805 16.9986C8.99179 16.9986 8.74474 16.9058 8.5522 16.7371C7.82504 16.1013 7.12398 15.5038 6.50545 14.9767L6.50229 14.974C4.68886 13.4286 3.12289 12.094 2.03333 10.7794C0.815353 9.30968 0.248047 7.9162 0.248047 6.39391C0.248047 4.91487 0.755203 3.55037 1.67599 2.55157C2.60777 1.54097 3.88631 0.984375 5.27649 0.984375C6.31552 0.984375 7.26707 1.31287 8.10464 1.96065C8.52734 2.28763 8.91049 2.68781 9.24805 3.15459C9.58574 2.68781 9.96875 2.28763 10.3916 1.96065C11.2292 1.31287 12.1807 0.984375 13.2197 0.984375C14.6098 0.984375 15.8885 1.54097 16.8202 2.55157C17.741 3.55037 18.248 4.91487 18.248 6.39391C18.248 7.9162 17.6809 9.30968 16.4629 10.7792C15.3733 12.094 13.8075 13.4285 11.9944 14.9737C11.3747 15.5016 10.6726 16.1001 9.94376 16.7374C9.75136 16.9058 9.50417 16.9986 9.24805 16.9986ZM5.27649 2.03879C4.18431 2.03879 3.18098 2.47467 2.45108 3.26624C1.71033 4.06975 1.30232 5.18047 1.30232 6.39391C1.30232 7.67422 1.77817 8.81927 2.84508 10.1066C3.87628 11.3509 5.41011 12.658 7.18605 14.1715L7.18935 14.1743C7.81021 14.7034 8.51402 15.3033 9.24654 15.9438C9.98344 15.302 10.6884 14.7012 11.3105 14.1713C13.0863 12.6578 14.6199 11.3509 15.6512 10.1066C16.7179 8.81927 17.1938 7.67422 17.1938 6.39391C17.1938 5.18047 16.7858 4.06975 16.045 3.26624C15.3152 2.47467 14.3118 2.03879 13.2197 2.03879C12.4197 2.03879 11.6851 2.29312 11.0365 2.79465C10.4585 3.24179 10.0558 3.80704 9.81975 4.20255C9.69835 4.40593 9.48466 4.52733 9.24805 4.52733C9.01143 4.52733 8.79774 4.40593 8.67635 4.20255C8.44041 3.80704 8.03777 3.24179 7.45961 2.79465C6.811 2.29312 6.07643 2.03879 5.27649 2.03879Z" fill="black"></path>
                                        </svg>
                                        Add To Wishlist
                                    </a> --}}
                                    <a href="{{route('add-to-cart', $product->id)}}" class="btn btn-secondary w-100">ADD TO CART</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="content-inner-3 pb-0">
            <div class="container">
                <div class="product-description">
                    <div class="dz-tabs">
                        <ul class="nav nav-tabs center" id="myTab1" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Description</button>
                            </li>
                            {{-- <li class="nav-item" role="presentation">
                                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Reviews (12)</button>
                            </li> --}}
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                                <div class="detail-bx text-center">
                                    <h5 class="title">{{$product->name}}</h5>
                                    <p class="para-text">
                                        {!!html_entity_decode($product->content)!!}
                                    </p>
                                    <ul class="feature-detail">
                                        <li>
                                            <i class="icon feather icon-check"></i>
                                            <h5>Versatile, enduring style for all occasions</h5>
                                        </li>
                                        <li>
                                            <i class="icon feather icon-check"></i>
                                            <h5>Handcrafted Elegance, Comfort</h5>
                                        </li>
                                        <li>
                                            <i class="icon feather icon-check"></i>
                                            <h5>Versatile, enduring style for all occasions</h5>
                                        </li>
                                    </ul>
                                </div>
                                <div class="row g-lg-4 g-3">
                                    <?php $Images = DB::table('galleries')->where('product_id', $product->id)->get(); ?>
                                    @foreach ($Images as $image)
                                    <div class="col-xl-4 col-md-4 col-sm-4 col-6">
                                        <div class="related-img dz-media">
                                            <img src="{{url('/')}}/images/{{$image->image}}" alt="{{$product->name}}">
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php $Related = DB::table('products')->where('category', $product->category)->get(); ?>

        <section class="content-inner-1  overflow-hidden">
            <div class="container">
                <div class="section-head style-2 d-md-flex justify-content-between align-items-center">
                    <div class="left-content">
                        <h2 class="title mb-0">Related products</h2>
                    </div>
                    <a href="{{url('/')}}" class="text-secondary font-14 d-flex align-items-center gap-1">See all products
                        <i class="icon feather icon-chevron-right font-18"></i>
                    </a>
                </div>
                <div class="swiper-btn-center-lr">
                    <div class="swiper swiper-four">
                        <div class="swiper-wrapper">
                            @foreach ($Related as $product)
                            <div class="swiper-slide">
                                <div class="shop-card style-1">
                                    <div class="dz-media product-imgs">
                                        <img class="product-img" src="{{$product->image_one}}" alt="{{$product->name}}">
                                        <div class="shop-meta">
                                            <a href="{{url('/')}}/add-to-cart/{{$product->id}}" class="btn btn-secondary btn-md btn-rounded" data-bs-toggle="modals" data-bs-target="#sssexampleModal">
                                                <i class="fa-solid fa-eye d-md-none d-block"></i>
                                                <span class="d-md-block d-none">Buy Now</span>
                                            </a>
                                            <div class="btn btn-primary meta-icon dz-wishicon">
                                                <i class="icon feather icon-heart dz-heart"></i>
                                                <i class="icon feather icon-heart-on dz-heart-fill"></i>
                                            </div>
                                            <div class="btn btn-primary meta-icon dz-carticon">
                                                <i class="flaticon flaticon-basket"></i>
                                                <i class="flaticon flaticon-basket-on dz-heart-fill"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dz-content">
                                        <h5 class="title"><a href="{{url('/')}}/product/{{$product->slung}}">{{$product->name}}</a></h5>
                                        <h5 class="price">kes {{$product->price}}</h5>
                                    </div>
                                    <?php
                                            $Main = \App\Models\Main::find($product->main);
                                        ?>
                                        @if($Main==null)

                                        @else
                                        <div class="product-tag">
                                            <span class="badge ">

                                                {{$Main->title}}

                                            </span>
                                        </div>
                                        @endif
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                    <div class="pagination-align">
                        <div class="tranding-button-prev btn-prev">
                            <i class="flaticon flaticon-left-chevron"></i>
                        </div>
                        <div class="tranding-button-next btn-next">
                            <i class="flaticon flaticon-chevron"></i>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

@endforeach


@endsection
