<?php
   $Slider = \App\Models\Product::where('status', 1)->limit(4)->inRandomOrder()->get();
?>
<div class="main-slider-wrapper">
    <div class="slider-inner">
        <div class="row">
            <div class="col-lg-6">
                <div class="slider-main">
                    @foreach ($Slider as $slider)
                    <div class="slick-slide">
                        <div class="content-info">
                            <h1 class="title">{{$slider->name}}.</h1>
                            <div class="swiper-meta-items">
                                <div class="meta-content">
                                    <span class="price-name">From</span>
                                    <span class="price-num d-inline-block">kes {{$slider->price}}</span>
                                </div>
                            </div>
                            <div class="content-btn m-b30">
                                <a href="#" class="btn btn-secondary me-xl-3 me-2 btnhover20">BUY NOW</a>
                                <a href="{{url('/')}}/product/{{$slider->slung}}" class="btn btn-outline-secondary btnhover20">VIEW DETAIL </a>
                            </div>
                        </div>
                    </div>
                    @endforeach



                </div>
            </div>
            <div class="col-lg-6">
                <div class="slider-thumbs">
                    @foreach ($Slider as $slider)
                    <div class="slick-slide">
                        <div class="banner-media" data-name="Wakazi">
                            <div class="img-preview">
                                {{-- 780 by 1050 --}}
                                <img style="height:630px; object-fit:cover" src="{{$slider->image_one}}" alt="{{$slider->name}}">
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            {{-- <button class="slick-next slick-arrow" aria-label="Next" type="button" style="">Next</button></div> --}}
        </div>

        {{-- <svg class="star-1" xmlns="http://www.w3.org/2000/svg" width="94" height="94" viewBox="0 0 94 94" fill="none">
            <path d="M47 0L53.8701 30.4141L80.234 13.766L63.5859 40.1299L94 47L63.5859 53.8701L80.234 80.234L53.8701 63.5859L47 94L40.1299 63.5859L13.766 80.234L30.4141 53.8701L0 47L30.4141 40.1299L13.766 13.766L40.1299 30.4141L47 0Z" fill="#FEEB9D" />
        </svg>
        <svg class="star-2" xmlns="http://www.w3.org/2000/svg" width="82" height="94" viewBox="0 0 82 94" fill="none">
            <path d="M41 0L45.277 39.592L81.7032 23.5L49.554 47L81.7032 70.5L45.277 54.408L41 94L36.723 54.408L0.296806 70.5L32.446 47L0.296806 23.5L36.723 39.592L41 0Z" fill="black" />
        </svg> --}}

    </div>
</div>
