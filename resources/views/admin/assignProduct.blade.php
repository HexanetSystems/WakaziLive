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
                        <h4>Assign {{$Product->name}}</h4>
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
                        <form method="POST" action="{{url('/')}}/admin/assign-Product">
                            {{csrf_field()}}
                            <div class="row">
                                <div class="input-field col s12">
                                    <input autocomplete="off" name="title" id="list-title" value="{{$Product->name}}" type="text">
                                    <label for="list-title">Product Name</label>
                                </div>

                            </div>
                            <div class="row">
                                {{--  --}}
                                <div class="input-field col s12">
                                    <select name="UserID" class="icons" id="mydiv">
                                        <?php $User = DB::table('users')->where('id',$Product->UserID)->get() ?>
                                        @foreach ($User as $user)
                                        <option value="{{$user->id}}" selected>{{$user->name}} - {{$user->email}}</option>
                                        @endforeach
                                        @foreach ($Users as $users)
                                          <option value="{{$users->id}}" data-icon="{{$users->image}}" class="circle">{{$users->name}} - {{$users->email}}</option>
                                        @endforeach
                                    </select>
                                    <label>Choose Category</label>
                                </div>



                                <div class="section-space col s12"></div>
                            </div>




                            <input type="hidden" name="product_id" value="{{$Product->id}}">

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
