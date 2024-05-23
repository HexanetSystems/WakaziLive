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
                    <li class="active-bre"><a href="#"> Edit Signals</a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/signals"><i class="fa fa-backward" aria-hidden="true"></i> All Signals</a>
                    </li>
                </ul>
               
            </div>
            <div class="sb2-2-add-blog sb2-2-1">
                <div class="box-inn-sp">
                    <div class="inn-title">
                        <h4>Edit Signals</h4>
                        {{-- <p> Create Blog Posts </p> --}}
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
                        <form method="POST" action="{{url('/')}}/admin/edit_Signal/{{$Signal->id}}" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="row">
                                <div class="input-field col s12">
                                    <input autocomplete="off" name="currency_pair" value="{{$Signal->currency_pair}}" id="list-title" placeholder="USDCAD" type="text" class="validate" required>
                                    <label for="list-title">Currency Pair</label>
                                </div>
                            </div>

   

                            <div class="row">
                                <div class="input-field col s12">
                                    <input autocomplete="off" name="position" value="{{$Signal->position}}" id="list-title" placeholder="Closed at 1.117 Profit:1" type="text" class="validate" required>
                                    <label for="list-title">Position</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <input autocomplete="off" name="datetime" value="{{$Signal->datetime}}" id="list-title" type="datetime-local" class="validate" required>
                                    {{-- <label for="list-title">Date and Time</label> --}}
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input autocomplete="off" name="sl" value="{{$Signal->sl}}" id="list-title" placeholder="1.107" type="text" class="validate" required>
                                    <label for="list-title">SL</label>
                                </div>
                                <div class="input-field col s6">
                                    <input autocomplete="off" name="tp" value="{{$Signal->tp}}" id="list-title" placeholder="1.1214" type="text" class="validate" required>
                                    <label for="list-title">TP</label>
                                </div>
                            </div>
                          
                          
                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea required name="comments" class="materialize-textarea">{{$Signal->comments}}</textarea>
                                    <label for="textarea1">Comments:</label>
                                </div>
                            </div>
                            
                          
                            
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

    </div>
</div>

{{--  --}}
<div id="ex1" class="modal">
    <div class="sb2-2-3">
        <div class="row">
            <div class="col-md-12">
                <div class="box-inn-sp">
                    <div class="inn-title">
                        <h4>Add New Category</h4>
                    </div>
                    <div class="tab-inn">
                        <form method="POST" id="categoryAddForm">
                            {{csrf_field()}}
                            <div class="row">
                                <div class="input-field col s12">
                                    <input autocomplete="off" name="title" id="CategoryTitle" type="text" class="validate">
                                    <label for="CategoryName">Category Name</label>
                                </div>
                            </div>
                            <div class="row" id="submitButton">
                                <div class="input-field col s12">
                                    <input  type="submit" class="waves-effect waves-light btn-large" value="Submit">
                                </div>
                            </div>
                            
                            <div class="tab-inn" id="loading-bar">
                                <div class="progress">
                                    <div class="indeterminate"></div>
                                </div>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
{{-- <a href="#" rel="modal:close">Close</a> --}}
<script type="text/javascript">
        // A $( document ).ready() block.
    $( document ).ready(function() {
        $('#loading-bar').hide();
    });

    $('#categoryAddForm').on('submit',function(event){
        event.preventDefault();
        $('#loading-bar').show();
   

        let title = $('#CategoryTitle').val();
       

        $.ajax({
          url: "{{url('/')}}/admin/addCategoryAjaxRequest",
          type:"POST",
          data:{
            "_token": "{{ csrf_token() }}",
            title:title,
          },
          success:function(response){
            $('#loading-bar').hide();
            $('#submitButton').html('<center><span class="alert-success text-center">Category Added Successfully</span></center>').delay(3000);
            $('#categoryAddForm')[0].reset();
            setTimeout(function() {
                location.reload();
            }, 5000);
          },
         });
        });
      </script>
</div>
{{--  --}}
@endsection