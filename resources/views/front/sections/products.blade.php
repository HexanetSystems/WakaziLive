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
                                    $( "#cta_{{$product->id}}" ).html("Explore");
                                    $("#offcanvasRight").load(" #offcanvasRight > *");
                                    $("#cartCount").load(" #cartCount > *");
                                    // Open Cart
                                    // $("#cartCount").click();
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
    </section>
    <!-- Products Section Start -->
