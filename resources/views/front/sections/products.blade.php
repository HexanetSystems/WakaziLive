<!-- Products Section Start -->
    <section class="content-inner">
        <div class="container">
            <div class=" row justify-content-md-between align-items-start">
                <div class="col-lg-6 col-md-12">
                    <div class="section-head style-1 m-b30  wow fadeInUp" data-wow-delay="0.2s">
                        <div class="left-content">
                            <h2 class="title">Trendy Picks</h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="site-filters clearfix style-1 align-items-center wow fadeInUp ms-lg-auto" data-wow-delay="0.4s">
                        <ul class="filters" data-bs-toggle="buttons">
                            <li class="btn active">
                                <input type="radio">
                                <a href="javascript:void(0);">ALL</a>
                            </li>
                            <li data-filter=".Dresses" class="btn">
                                <input type="radio">
                                <a href="javascript:void(0);">Bags</a>
                            </li>
                            <li data-filter=".Tops" class="btn">
                                <input type="radio">
                                <a href="javascript:void(0);">Sandals</a>
                            </li>
                            <li data-filter=".Outerwear" class="btn">
                                <input type="radio">
                                <a href="javascript:void(0);">Belts</a>
                            </li>
                            <li data-filter=".Jacket" class="btn">
                                <input type="radio">
                                <a href="javascript:void(0);">Jewels</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clearfix">
                <ul id="masonry" class="row g-xl-4 g-3">
                    @foreach ($Product as $product)
                    <li class="card-container col-6 col-xl-4 col-lg-3 col-md-4 col-sm-6 Tops wow fadeInUp" data-wow-delay="0.6s">
                        <div class="shop-card">
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
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </section>
    <!-- Products Section Start -->
