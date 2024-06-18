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
                    <li><a href="index.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                    </li>
                    <li class="active-bre"><a href="#"> Edit {{$SubCategory->title}}</a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/categories"><i class="fa fa-backward" aria-hidden="true"></i> All Categories</a>
                    </li>
                </ul>

            </div>
            <div class="sb2-2-add-blog sb2-2-1">
                <h2>Edit {{$SubCategory->title}}</h2>

                <center>
                    @if(Session::has('message'))
                                  <div class="alert alert-success">{{ Session::get('message') }}</div>
                   @endif

                   @if(Session::has('messageError'))
                                  <div class="alert alert-danger">{{ Session::get('messageError') }}</div>
                   @endif
                </center>
                <form method="POST" action="{{url('/')}}/admin/edit_SubCategory/{{$SubCategory->id}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="list-title" name="title" type="text" value="{{$SubCategory->title}}" class="validate">
                            <label for="list-title">Edit Category Title</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s12">
                            <textarea required name="meta" class="materialize-textarea">{!!html_entity_decode($SubCategory->meta)!!}</textarea>
                            <label for="textarea1">Meta</label>
                        </div>
                    </div>
                    {{--  --}}
                    <div class="row">
                        {{--  --}}
                        <div class="input-field col s12">
                            <select required name="category_id" class="icons" id="mydiv">
                                <option value="<?php $Parent = \App\Models\Category::find($SubCategory->category_id); echo $Parent->id; ?>" disabled selected><?php $Parent = \App\Models\Category::find($SubCategory->category_id); echo $Parent->title; ?></option>
                                @foreach ($Category as $Categories)
                                <option value="{{$Categories->id}}">{{$Categories->title}}</option>
                                @endforeach
                            </select>
                            <label>Choose Sub Category</label>
                        </div>
                        {{-- <a href="#ex1" rel="modal:open"> <strong>+ Add New Category</strong> </a> --}}
                        {{--  --}}
                        <div class="section-space col s12"></div>
                    </div>
                    {{--  --}}
                    <div class="row">

                        <div class="input-field col s12">
                            <label for="textarea1">Descriptions:</label>
                            <br>
                            <textarea required id="article-ckeditor" name="ckeditor" class="materialilze-textarea" placeholder="content">{!!html_entity_decode($SubCategory->content)!!}</textarea>


                        </div>
                    </div><br>

                     {{-- Images --}}
                                 {{-- Preview --}}
                            {{-- Style --}}
                            <style>
                                .btn-file {
                                    position: relative;
                                    overflow: hidden;
                                }
                                .btn-file input[type=file] {
                                    position: absolute;
                                    top: 0;
                                    right: 0;
                                    min-width: 100%;
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
                                    width: 100%;
                                }
                            </style>
                            {{-- Style --}}
                            <div class="row">
                                <div class="">
                                    <div class="input-field col s12">
                                        <div class="form-group">
                                            <label>Add Category Featured Image</label>
                                            <div class="input-group">
                                                <span class="input-group-btn">
                                                    <span class="btn btn-default btn-file">
                                                        Size: 440 by 550 Browse… <input name="image" type="file" id="imgInp">
                                                    </span>
                                                </span>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <img class="image-preview" style="width:auto;" src="{{$SubCategory->image}}" id='img-upload'/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {{-- Preview --}}

                            {{-- Images --}}
                            <br><br>
                            <div class="clearfix"></div>
                            <input type="hidden" name="image_cheat" value="{{$SubCategory->image}}">
                    <div class="row">
                        <div class="input-field col s12">
                            <input type="submit" class="waves-effect waves-light btn-large" value="Save Changes">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!--== BODY INNER CONTAINER ==-->

    </div>
</div>


@endsection
