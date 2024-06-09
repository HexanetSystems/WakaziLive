@extends('suppliers.master')

@section('content')

<div class="sa-app__content">
    @include('suppliers.toolbar')
    <!-- sa-app__toolbar / end --><!-- sa-app__body -->
    <div id="top" class="sa-app__body">
        <form action="{{url('/')}}/supplier/edit-Product/{{$product->id}}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="mx-sm-2 px-2 px-sm-3 px-xxl-4 pb-6">
            <div class="container">
                <div class="py-5">
                    <div class="row g-4 align-items-center">
                        <div class="col">
                        <nav class="mb-2" aria-label="breadcrumb">

                        </nav>
                        <h1 class="h3 m-0">Edit Product {{$product->name}}</h1>
                        </div>
                        <div class="col-auto d-flex">
                            <a href="{{route('supplier.my-products')}}" class="btn btn-secondary me-3">All Products</a>
                            <a href="{{url('/')}}/supplier/upload-ui/{{$product->id}}" class="btn btn-secondary me-3">Upload Images <span class="fa fa-image"></span></a>
                            <button type="submit" href="#" class="btn btn-primary">Save <span class="fa fa-save"></span> </button>
                        </div>
                    </div>
                </div>
                <div class="sa-entity-layout" data-sa-container-query="{&quot;920&quot;:&quot;sa-entity-layout--size--md&quot;,&quot;1100&quot;:&quot;sa-entity-layout--size--lg&quot;}">
                    <div class="sa-entity-layout__body">
                        <div class="sa-entity-layout__main">
                        <div class="card">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Basic information</h2>
                                </div>
                                <div class="mb-4">
                                    <label for="form-product/name" class="form-label">Name</label>
                                    <input type="text" name="name" class="form-control" value="{{$product->name}}" id="form-product/name" placeholder="Brandix Screwdriver SCREW150"/>
                                </div>

                                <div class="mb-4">
                                    <label for="form-product/description" class="form-label">Description</label>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <textarea name="content" id="article_ckeditor" rows="10" cols="80">{{$product->content}}</textarea>
                                        </div>
                                    </div>

                                            <script src="https://amanivehiclesounds.co.ke/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
                                            <script>
                                                CKEDITOR.replace( 'article_ckeditor' );
                                            </script>
                                            <br><br>

                                </div>
                                <div><label for="form-product/short-description" class="form-label">Short description</label><textarea id="form-product/short-description" class="form-control" name="meta" rows="2">{{$product->meta}}</textarea></div>
                            </div>
                        </div>
                        <div class="card mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Pricing</h2>
                                </div>
                                <div class="row g-4">
                                    <div class="col"><label for="form-product/price" class="form-label">Price</label><input value="{{$product->price}}" name="price" type="number" class="form-control" id="form-product/price" value="1499"/></div>

                                </div>

                            </div>
                        </div>

                        <div class="card mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Featured Image</h2>
                                    <br>
                                    <input name="image_one" type="file" class="form-control" id="formFile-1" />
                                </div>
                            </div>

                        </div>

                        </div>
                        <div class="sa-entity-layout__sidebar">


                        <div class="card w-100">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Featured Image</h2>
                                </div>
                                <div style="height:300px; width:300px">
                                    <img style="width:100%"  src="{{$product->image_one}}">
                                </div>
                            </div>
                        </div>

                        <div class="card w-100">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Visibility</h2>
                                </div>
                                <div class="mb-4"><label class="form-check"><input checked="" type="radio" class="form-check-input" name="status"/><span class="form-check-label">Published</span></label><label class="form-check"><input type="radio" class="form-check-input" name="status" checked=""/><span class="form-check-label">Scheduled</span></label><label class="form-check mb-0"><input type="radio" class="form-check-input" name="status"/><span class="form-check-label">Hidden</span></label></div>
                                <div><label for="form-product/seo-title" class="form-label">Publish date</label><input value="{{today()}}" type="text" class="form-control datepicker-here" id="form-product/publish-date" data-auto-close="true" data-language="en"/></div>
                            </div>
                        </div>
                        <div class="card w-100 mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Categories</h2>
                                </div>
                                <select name="category" class="sa-select2 form-select" >
                                    <?php
                                        $Cat = \App\Models\Category::find($product->category);
                                    ?>
                                    <option selected="" value="{{$Cat->id}}">{{$Cat->title}}</option>
                                    @foreach ($Categories as $categories)
                                    <option value="{{$categories->id}}">{{$categories->title}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="card w-100 mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Sub Categories</h2>
                                </div>
                                <select name="subcategory" class="sa-select2 form-select" multiple="">
                                    <option >Chainsaws</option>
                                    <option>Hand tools</option>
                                    <option>Machine tools</option>
                                    <option>Power machinery</option>
                                    <option>Measurements</option>
                                </select>
                                {{--
                                <div class="mt-4 mb-n2"><a href="#">Add new category</a></div>
                                --}}
                            </div>
                        </div>
                        <div class="card w-100 mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Tags</h2>
                                </div>
                                <select class="sa-select2 form-select" data-tags="true" multiple="">
                                    <option selected="">Wakazi</option>
                                </select>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <input type="hidden" name="image_one_cheat" value="{{$product->image_one}}">
        </form>
     </div>
    <!-- sa-app__body / end --><!-- sa-app__footer -->
    <div class="sa-app__footer d-block d-md-flex">
       <!-- copyright -->Wakazi Suppliers Dashboad App — © {{date('Y')}}
       <div class="m-auto"></div>
       <div>Powered by Wakazi IT — Design by <a href="#">Wakazi Creatives</a></div>
       <!-- copyright / end -->
    </div>
    <!-- sa-app__footer / end -->
 </div>
@endsection
