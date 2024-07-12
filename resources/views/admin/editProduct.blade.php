@extends('admin.master')
@section('content')
<!-- Remember to include jQuery :) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style>
    .modal a.close-modal{
        top:0px !important;
        right:0px !important;
    }
</style>
<!--== BODY CONTNAINER ==-->
 <div class="container-fluid sb2">
    <div class="row">
        @include('admin.sidebar')

        <!--== BODY INNER CONTAINER ==-->

        <div class="sb2-2">
            <div class="sb2-2-2">
                <ul>
                    <li><a href="{{url('/')}}"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                    </li>
                    <li class="active-bre"><a href="#"> Edit {{$Product->name}}</a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/products"><i class="fa fa-backward" aria-hidden="true"></i> All Products</a>
                    </li>
                </ul>

            </div>
            <div class="sb2-2-add-blog sb2-2-1">
                <div class="box-inn-sp">
                    <div class="inn-title">
                        <h4>Edit {{$Product->name}}</h4>
                        <center>
                            @if(Session::has('message'))
                                          <div class="alert alert-success">{{ Session::get('message') }}</div>
                           @endif

                           @if(Session::has('messageError'))
                                          <div class="alert alert-danger">{{ Session::get('messageError') }}</div>
                           @endif
                        </center>
                    </div>
                    <div class="bor">
                        <form method="POST" action="{{url('/')}}/admin/edit_Product/{{$Product->id}}" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="row">
                                <div class="input-field col s12">
                                    <input autocomplete="off" name="title" id="list-title" value="{{$Product->name}}" type="text">
                                    <label for="list-title">Product Name</label>
                                </div>
                                <div class="input-field col s12">
                                    <input autocomplete="off" name="price" id="list-title" value="{{$Product->price}}" type="number">
                                    <label for="list-title">Product Price</label>
                                </div>
                                <div class="input-field col s12">
                                    <input  name="sku" id="list-title" value="{{$Product->sku}}" type="text" placeholder="SKU-01">
                                    <label for="list-title">SKU</label>
                                </div>
                            </div>
                            <?php
                            $Main = DB::table('mains')->get();
                            ?>
                            <div class="row">
                                {{--  --}}
                                <div class="input-field col s6">
                                    <select required name="main" class="icons">
                                        <?php $MainSelected = DB::table('mains')->where('id',$Product->main)->get() ?>
                                        @foreach ($MainSelected as $mainSelected)
                                        <option value="{{$mainSelected->id}}" selected>{{$mainSelected->title}}</option>
                                        @endforeach
                                        @foreach ($Main as $main)
                                        <option value="{{$main->id}}" data-icon="" class="circle">{{$main->title}}</option>
                                        @endforeach
                                    </select>
                                    <label>Product Class</label>
                                </div>
                            </div>
                        <div class="section-space col s12"></div>
                            <div class="row">
                                {{--  --}}
                                <div class="input-field col s6">
                                    <select required name="category" class="icons" id="mydiv">
                                        <?php $CategorySelected = DB::table('categories')->where('id',$Product->category)->get() ?>
                                        @foreach ($CategorySelected as $CatSel)
                                        <option value="{{$CatSel->id}}" selected>{{$CatSel->title}}</option>
                                        @endforeach
                                        @foreach ($Category as $Categories)
                                          <option value="{{$Categories->id}}" data-icon="{{url('/')}}/uploads/categories/{{$Categories->image}}" class="circle">{{$Categories->title}}</option>
                                        @endforeach
                                    </select>
                                    <label>Choose Category</label>
                                </div>

                                <div class="input-field col s6">
                                    <select name="sub_cat" id="sub_cat"  class="icons">
                                        <?php $SubCat = \App\Models\SubCategory::find($Product->sub_category_id);   ?>

                                        @if($SubCat ==null)

                                        @else
                                        <option value="{{$SubCat->id}}" disabled selected>{{$SubCat->title}}</option>
                                        @endif


                                    </select>
                                    <label>Choose Sub Category</label>
                                </div>

                                <div class="section-space col s12"></div>
                            </div>




                            <div class="row">
                            {{-- Stock --}}
                                <div class="input-field col s4">
                                    <div class="box-inn-sp box-second-inn">
                                        <div class="inn-title">
                                            <h4>Stock Status</h4>
                                        </div>
                                        <div class="tab-inn">
                                            @if($Product->stock == 'Out Of Stock')
                                            <!-- Switch -->
                                            <div class="switch mar-bot-20">
                                                <label>
                                                    Off
                                                    <input name="stock" type="checkbox">
                                                    <span class="lever"></span> On
                                                </label>
                                            </div>
                                            @else
                                            <!-- Switch -->
                                            <div class="switch mar-bot-20">
                                                <label>
                                                    Off
                                                    <input name="stock" checked type="checkbox">
                                                    <span class="lever"></span> On
                                                </label>
                                            </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="input-field col s4">
                                    <div class="box-inn-sp box-second-inn">
                                        <div class="inn-title">
                                            <h4>Trending</h4>
                                        </div>
                                        <div class="tab-inn">
                                            @if($Product->trending == '0')
                                            <!-- Switch -->
                                            <div class="switch mar-bot-20">
                                                <label>
                                                    Off
                                                    <input name="trending" type="checkbox">
                                                    <span class="lever"></span> On
                                                </label>
                                            </div>
                                            @else
                                            <!-- Switch -->
                                            <div class="switch mar-bot-20">
                                                <label>
                                                    Off
                                                    <input name="trending" checked type="checkbox">
                                                    <span class="lever"></span> On
                                                </label>
                                            </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="input-field col s4">
                                    <div class="box-inn-sp box-second-inn">
                                        <div class="inn-title">
                                            <h4>Featured</h4>
                                        </div>
                                        <div class="tab-inn">
                                            @if($Product->featured == '0')
                                            <!-- Switch -->
                                            <div class="switch mar-bot-20">
                                                <label>
                                                    Off
                                                    <input name="featured" type="checkbox">
                                                    <span class="lever"></span> On
                                                </label>
                                            </div>
                                            @else
                                            <!-- Switch -->
                                            <div class="switch mar-bot-20">
                                                <label>
                                                    Off
                                                    <input name="featured" checked type="checkbox">
                                                    <span class="lever"></span> On
                                                </label>
                                            </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea required name="meta" class="materialize-textarea">{{$Product->meta}}</textarea>
                                    <label for="textarea1">Meta Descriptions:</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea required id="article-ckeditor" name="content" class="materialilze-textarea" placeholder="content">{{$Product->content}}</textarea>
                                </div>
                            </div><br><br>

                            <script src="https://amanivehiclesounds.co.ke/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
                            <script>
                                CKEDITOR.replace( 'article_ckeditor' );
                            </script>
                            <br><br>


                            <script src="{{ asset('ckeditor/ckeditor.js')}}"></script>
                            <script>CKEDITOR.replace('article-ckeditor');</script>




                           {{-- Images --}}
                            <style>
                                .btn-file {
                                    position: relative;
                                    overflow: hidden;
                                }
                                .btn-file input[type=file] {
                                    position: absolute;
                                    top: 0;
                                    right: 0;
                                    min-width: 33.33%;
                                    min-height: 100%;
                                    font-size: 100px;
                                    text-align: right;
                                    filter: alpha(opacity=0);
                                    opacity: 0;
                                    outline: none;
                                    background: white;
                                    cursor: inherit;
                                    display: block;
                                }

                                #img-upload{
                                    width: 33.33%;
                                }
                                .image-preview{
                                    max-height:100%;
                                    height:100% !important;
                                }
                            </style>
                            {{-- Style --}}
                            <div class="row">
                                <div class="">
                                    <div class="input-field col s3 col-lg-12">
                                        <div class="form-group">
                                            <label>Image One</label>
                                            <div class="input-group">
                                                <span class="input-group-btn">
                                                    <span class="btn btn-default btn-file">
                                                       <small> One: Size 277 by 377  Browse… </small><input name="image_one" type="file" id="imgInp">
                                                    </span>
                                                </span>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <img class="image-preview" style="width:100%" src="{{$Product->image_one}}"/>
                                        </div>
                                    </div>



                                </div>
                            </div>

                            <input type="hidden" name="image_one_cheat" value="{{$Product->image_one}}">
                            <input type="hidden" name="image_two_cheat" value="{{$Product->image_two}}">
                            <input type="hidden" name="image_three_cheat" value="{{$Product->image_three}}">
                            <input type="hidden" name="image_four_cheat" value="{{$Product->image_four}}">

                            <div class="row">
                                <div class="input-field col s12">
                                    <input  type="submit" class="waves-effect waves-light btn-large" value="Save Changes">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--== BODY INNER CONTAINER ==-->
        <script>
            $(document).ready(function (e) {
                // $('select').material_select();
                $('#mydiv').on('change', e => {
                    var val = $('#mydiv').val();
                    $('#sub_cat').empty()
                    $.ajax({
                        url: `/admin/get-subcategories/${val}`,
                        success: function(data){
                                var toAppend = '';
                                $.each(data,function(i,o){
                                toAppend += '<option value="'+o.id+'">'+o.title+'</option>';
                                $('#sub_cat').empty();
                                $('#sub_cat').append(toAppend);
                                $("#sub_cat").material_select()

                            });
                            // $('#sub_cat').append(toAppend);


                            }
                    })
                })
            })
        </script>

    </div>
</div>

@endsection
