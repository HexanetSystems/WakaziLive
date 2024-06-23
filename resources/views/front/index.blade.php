@extends('front.master')

@section('content')
<div class="page-content bg-light">

    @include('front.sections.hero')

    {{-- @include('front.sections.featured') --}}

    {{-- Create Break --}}
    @include('front.sections.products')

    {{-- @include('front.sections.about') --}}

    {{-- @include('front.sections.horizontal') --}}
    @include('front.intagram-feeds')

</div>

@endsection
