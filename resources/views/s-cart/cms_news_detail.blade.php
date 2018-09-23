@extends($theme.'.shop_layout')

@section('main')

<section >
<div class="container">
    <div class="row">
        <h2 class="title text-center">{{ $title }}</h2>
        {!! $news_currently->content !!}
</div>
</div>
</section>
@endsection

@section('breadcrumb')
@endsection
