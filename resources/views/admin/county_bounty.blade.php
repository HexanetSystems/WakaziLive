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
                    <li class="active-bre"><a href="#"> Edit County Bounty </a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/privacy"><i class="fa fa-backward" aria-hidden="true"></i> Privacy Policy </a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/terms"><i class="fa fa-backward" aria-hidden="true"></i> Terms and Conditions</a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/faq"><i class="fa fa-backward" aria-hidden="true"></i> Frequently Asked Questions</a>
                    </li>
                </ul>

            </div>
            <div class="sb2-2-add-blog sb2-2-1">
                <div class="box-inn-sp">
                    <div class="inn-title">
                        <h4>Edit County Bounty</h4>
                        <p> </p>
                        <center>
                            @if(Session::has('message'))
                                          <div class="alert alert-success">{{ Session::get('message') }}</div>
                           @endif

                           @if(Session::has('messageError'))
                                          <div class="alert alert-danger">{{ Session::get('messageError') }}</div>
                           @endif
                        </center>
                    </div>
                    @foreach ($County as $item)

                    <div class="bor">
                        <form method="POST" action="{{url('/')}}/admin/update-county-bounty" enctype="multipart/form-data">
                            {{csrf_field()}}

                            {{-- <div class="input-field col s6">
                                <div class="file-field">
                                    <div class="btn">
                                        <span>File</span>
                                        <input required name="image" type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input  class="file-path validate" type="text" placeholder="Upload Featured Banner">
                                    </div>
                                </div>
                            </div>

                            <div class="input-field col s6">
                                <div class="file-field">
                                    <div class="btn">
                                        <span>Video</span>
                                        <input required name="video" type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input  class="file-path validate" type="text" placeholder="Upload Featured Video">
                                    </div>
                                </div>
                            </div> --}}

                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea required name="meta" class="materialize-textarea">{{$item->meta}}</textarea>
                                    <label for="textarea1">Meta Descriptions:</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea  required id="article-ckeditor" name="ckeditor" class="materialilze-textarea" placeholder="content" style="min-height:500px !important">{{$item->content}}</textarea>
                                </div>
                            </div>

                            <br><br>
                            <div class="row">
                                <div class="">
                                    <div class="input-field col s6">
                                        <div class="form-group">
                                            <label>Change Image</label>
                                            <div class="input-group">
                                                <span class="input-group-btn">
                                                    <span class="btn btn-default btn-file">
                                                        Browse… <input name="image" type="file" id="imgInp">
                                                    </span>
                                                </span>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <img class="image-preview" style="width:auto;" src="{{$item->image}}" id='img-upload'/>
                                        </div>
                                    </div>
                                    <div class="input-field col s6">
                                        <div class="form-group">
                                            <label>Change Video</label>
                                            <div class="input-group">
                                                <span class="input-group-btn">
                                                    <span class="btn btn-default btn-file">
                                                        Browse… <input name="video" type="file" id="imgInp">
                                                    </span>
                                                </span>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            {{-- <video src="{{$item->video}}"></video> --}}
                                            <video width="320" height="240" controls>
                                                <source src="{{$item->video}}">
                                              </video>

                                        </div>
                                    </div>
                                </div>
                            </div>
<input type="hidden" name="pro_img_cheat" value="{{$item->image}}">
<input type="hidden" name="pro_vid_cheat" value="{{$item->video}}">


                            <div class="row">
                                <div class="input-field col s12">
                                    <input  type="submit" class="waves-effect waves-light btn-large" value="Save Changes">
                                </div>
                            </div>

                        </form>
                    </div>

                    @endforeach

                </div>
            </div>
        </div>
        <!--== BODY INNER CONTAINER ==-->

    </div>
</div>

<script>
    $(document).ready( function() {
        $(document).on('change', '.btn-file :file', function() {
        var input = $(this),
            label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        input.trigger('fileselect', [label]);
        });

        $('.btn-file :file').on('fileselect', function(event, label) {

            var input = $(this).parents('.input-group').find(':text'),
                log = label;

            if( input.length ) {
                input.val(log);
            } else {
                if( log ) alert(log);
            }

        });
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#img-upload').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#imgInp").change(function(){
            readURL(this);
        });
    });
</script>

@endsection
