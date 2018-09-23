@extends($theme.'.shop_layout')
@section('slide')
@endsection

@section('main')
<section >
<div class="container">
    <div class="row">
        <h2 class="title text-center">{{ $title }}</h2>
        {!! $page->content !!}
</div>
</div>
</section>

@endsection

@section('breadcrumb')
@endsection
