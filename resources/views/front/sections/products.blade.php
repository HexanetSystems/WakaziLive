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
                            <?php
                              $Mains = DB::table('mains')->get();
                            ?>
                            @foreach ($Mains as $main)
                            <li data-filter=".{{$main->id}}_cat" class="btn">
                                <input type="radio">
                                <a href="javascript:void(0);">{{$main->title}}</a>
                            </li>
                            @endforeach

                        </ul>
                    </div>
                </div>
            </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
            <div class="clearfix">
                <ul id="masonry" class="row g-xl-4 g-3">
                    @foreach ($Product as $product)
                    <li class="card-container col-6 col-xl- col-lg-3 col-md-4 col-sm-6 {{$product->main}}_cat wow fadeInUp" data-wow-delay="0.6s">
                        <div class="shop-card">
                            <div class="dz-media product-imgs">
                                <img class="product-img" src="{{$product->image_one}}" alt="{{$product->name}}">
                                <div class="shop-meta">
                                    <a href="{{url('/')}}/product/{{$product->slung}}" class="btn btn-secondary btn-md btn-rounded addToCarts" data-bs-toggle="modals" data-bs-target="exampleModal_{{$product->id}}">
                                        <i class="fa-solid fa-eye d-md-none d-block"></i>
                                        <span class="d-md-block" id="cta_{{$product->id}}"> Explore

                                        </span>
                                    </a>

                                    <a id="productID_{{$product->id}}" href="#" style=" width:45px; height:45px; border-radius:50%">
                                        <div class="btn btn-primary meta-icon dz-carticon">
                                            <i class="flaticon flaticon-basket"></i>
                                            <i class="flaticon flaticon-basket-on dz-heart-fill"></i>
                                        </div>
                                    </a>

                                </div>
                            </div>
                            <div class="dz-content">
                                <h5 class="title"><a href="{{url('/')}}/product/{{$product->slung}}">{{$product->name}}</a></h5>
                                <h5 class="price">Ksh {{$product->price}}</h5>
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


                    <form method="post" action="{{route('add-to-cart-ajax')}}" style="display:none" id="form_{{$product->id}}">
                      @csrf
                      <input type="hidden" name="product_id" value="{{$product->id}}">
                    </form>

                    <script>
                        $(document).ready(function() {
                            // Submit
                            $("#productID_{{$product->id}}").on('click', (function(e) {
                                $("#cta_{{$product->id}}").html("Adding...");
                                e.preventDefault();
                                $("#form_{{$product->id}}").submit();
                            }));
                            //
                            $("#form_{{$product->id}}").on('submit', (function(e) {
                                e.preventDefault();
                                $.ajax({
                                url: $(this).attr('action'),
                                type: "POST",
                                data: new FormData(this),
                                contentType: false,
                                cache: false,
                                processData: false,
                                success: function(response) {
                                    $("#form").trigger("reset"); // to reset form input fields
                                    $("#cta_{{$product->id}}").html("Explore");
                                    $("#offcanvasRight").load(" #offcanvasRight > *");
                                    $("#cartCount").load(" #cartCount > *");
                                    window.location.replace("{{url('/')}}/cart/checkout");
                                },
                                error: function(e) {
                                    console.log(e);
                                }
                                });
                            }));
                        });
                    </script>

                    @endforeach
                </ul>
            </div>
        </div>
        <div class="container mt-5">
            <h2 class="title mb-4">Our Partners</h2>
            <div id="partnersCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="d-flex justify-content-around align-items-center">
                            <div class="partner-logo">
                                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.ZJnQ2wu_N9H-h0bMX9wKNAHaEJ%26pid%3DApi&f=1&ipt=75026333fdea20b2a235612c802211f96cffce45bd672a3117ad9d445cabf27f&ipo=images" alt="Partner 1">
                            </div>
                            <div class="partner-logo">
                                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flogopng.com.br%2Flogos%2Fspacex-159.png&f=1&nofb=1&ipt=f023338479f99b1bb539ac4987fb71fc0aad2c089c256838718d1f3b8e3511c7&ipo=images" alt="Partner 2">
                            </div>
                            <div class="partner-logo">
                                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.xwVv30Zr-nwQgstWHQMnSAHaHa%26pid%3DApi&f=1&ipt=7ca93024f749be3e3027de0a0e8e24a051a721695e178a67cb3d43b61572ae7e&ipo=images" alt="Partner 3">
                            </div>
                            <div class="partner-logo">
                                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.explicit.bing.net%2Fth%3Fid%3DOIP.SADHojdqZakAqe03eUs8ugHaFj%26pid%3DApi&f=1&ipt=97b6321407f21b13615bdb67efd7c1ab952cda1390305efe55bf27c0d3094e50&ipo=images" alt="Partner 4">
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="d-flex justify-content-around align-items-center">
                            <div class="partner-logo">
                                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.oyAXY5lAZ3_RO25CozatZAHaH_%26pid%3DApi&f=1&ipt=1da80669dceaae7ba0e4bbe50fdfbed7da90432f799a83ee42eb7a10df47d797&ipo=images" alt="Partner 5">
                            </div>
                            <div class="partner-logo">
                                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.J1T9RSbhpudDsCA5qlza-QHaEK%26pid%3DApi&f=1&ipt=47c8eb6d1ce519c8ef9bba5cdb336dc582b810b1f304f76fa3eb01985850c694&ipo=images" alt="Partner 6">
                            </div>
                            <div class="partner-logo">
                                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flogodix.com%2Flogo%2F2079683.png&f=1&nofb=1&ipt=37f4d9b0e76a47eb9dda228996fb37c51d156f044f8dea7e183a761cc9dc40aa&ipo=images" alt="Partner 7">
                            </div>
                            <div class="partner-logo">
                                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.Ul9S4k9f7jT1U4Vx5tLPHgHaFj%26pid%3DApi&f=1&ipt=089c611489727208e0027fca8c6858082f79b5c38e1a1ed170b3095be190c212&ipo=images" alt="Partner 8">
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#partnersCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#partnersCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <style>
            .partner-logo {
                width: 90px;
                height: 90px;
                overflow: hidden;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .partner-logo img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
        </style>
    </section>
    <!-- Products Section Start -->
