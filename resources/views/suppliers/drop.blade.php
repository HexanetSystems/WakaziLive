@extends('suppliers.master-drop')

@section('content')

<div class="sa-app__content">
    @include('suppliers.toolbar')
    <!-- sa-app__toolbar / end --><!-- sa-app__body -->
    <div id="top" class="sa-app__body">
        <br><br>


        {{--  --}}
        <div id="dropzone">
            <center>
                <div class="container">
                    @foreach ($products as $prod)
                       <h1 class="h3 m-0">Images for: {{$prod->name}}</h1>
                    @endforeach
                </div>
            </center>
            <form action="{{ route('FileUpload') }}" class="dropzone" id="file-upload" enctype="multipart/form-data">
                @csrf
                @foreach($products as $prod)
                <input type="hidden" name="product_id" value="{{$prod->id}}">
                @endforeach
                <div class="dz-message">
                    Drag and Drop Single/Multiple Files Here<br>
                </div>
            </form>
        </div>
        {{--  --}}
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



