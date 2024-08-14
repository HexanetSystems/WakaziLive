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
                    <li class="active-bre"><a href="#"> Add New Category</a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/categories"><i class="fa fa-backward" aria-hidden="true"></i> All Categories</a>
                    </li>
                </ul>

            </div>
            <div class="sb2-2-add-blog sb2-2-1">
                <h2>Add New Categories</h2>
                <p>Categories Are Used In Both Blogs And General Content Classification</p>
                <center>
                    @if(Session::has('message'))
                                  <div class="alert alert-success">{{ Session::get('message') }}</div>
                   @endif

                   @if(Session::has('messageError'))
                                  <div class="alert alert-danger">{{ Session::get('messageError') }}</div>
                   @endif
                </center>
                <form method="POST" action="{{url('/')}}/admin/add_Category" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="list-title" name="title" type="text" value="" class="validate">
                            <label for="list-title">Enter Category Title</label>
                        </div>
                    </div>

                      {{--  --}}
                      <div class="row">
                        {{--  --}}
                        <div class="input-field col s12">
                            <select required name="main_id" class="icons" id="mydiv">
                                <option value="" disabled selected>Choose Parent Category</option>
                                @foreach ($Main as $mains)
                                <option value="{{$mains->id}}">{{$mains->title}}</option>
                                @endforeach
                            </select>
                            <label>Choose Parent</label>
                        </div>
                        {{-- <a href="#ex1" rel="modal:open"> <strong>+ Add New Category</strong> </a> --}}
                        {{--  --}}
                        <div class="section-space col s12"></div>
                    </div>
                    {{--  --}}

                    <div class="row">
                        <div class="input-field col s12">
                            <textarea required name="meta" class="materialize-textarea"></textarea>
                            <label for="textarea1">Meta</label>
                        </div>
                    </div>
                    {{--  --}}

                    <div class="row">
                        <div class="input-field col s12">
                            <textarea required id="article-ckeditor" name="ckeditor" class="materialilze-textarea" placeholder="content"></textarea>
                            {{-- <label for="textarea1">Blog Descriptions:</label> --}}
                        </div>
                    </div><br><br>
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
                                            <label>Add Category Featured Image 1920 by 700</label>
                                            <div class="input-group">
                                                <span class="input-group-btn">
                                                    <span class="btn btn-default btn-file">
                                                        Browse… <input name="image" type="file" id="imgInp">
                                                    </span>
                                                </span>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <img class="image-preview" style="width:auto;" src="" id='img-upload'/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {{-- Preview --}}

                            {{-- Images --}}
                            <br><br>
                            <div class="clearfix"></div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input type="submit" class="waves-effect waves-light btn-large" value="Add Category">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!--== BODY INNER CONTAINER ==-->

    </div>
</div>


@endsection
