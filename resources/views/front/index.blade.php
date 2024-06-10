@extends('front.master')

@section('content')
<div class="page-content bg-light">

    @include('front.sections.hero')

    @include('front.sections.featured')

    @include('front.sections.about')

    @include('front.sections.horizontal')

   @include('front.sections.products')

</div>

@endsection