@extends($theme.'.shop_layout')

@section('main')
<section >
<div class="container">
    <div class="row">
        <h2 class="title text-center">{{ $title }}</h2>
        <!-- Center colunm-->
          <div class="center_column">
            <ul class="blog-posts">
@foreach ($news as $blog)
              <li class="post-item">
                <article class="entry">
                  <div class="row">
                    <div class="col-sm-3">
                      <div class="entry-thumb image-hover2"> <a href="{{ url('blog/'.Scart::str_to_url($blog->title).'_'.$blog->id.'.html') }}">
                        <figure><img src="{{ asset($path_file.'/thumb/'.$blog->image) }}" alt="{{ $blog->title }}" alt="Blog"></figure>
                        </a> </div>
                    </div>
                    <div class="col-sm-9">
                      <h3 class="entry-title"><a href="{{ url('blog/'.Scart::str_to_url($blog->title).'_'.$blog->id.'.html') }}">{{ $blog->title }}</a></h3>
                      <div class="entry-meta-data"> <span class="author">  <span class="date"><i class="pe-7s-date"></i>&nbsp; {{ $blog->created_at }}</span> </div>
                      <div class="entry-excerpt">{{ $blog->description }}</div>
                      <a href="{{ url('blog/'.Scart::str_to_url($blog->title).'_'.$blog->id.'.html') }}" class="button read-more">read full&nbsp; <i class="fa fa-angle-double-right"></i></a> </div>
                  </div>
                </article>
                <hr>
              </li>
@endforeach
            </ul>
            <div class="sortPagiBar">
              <div class="pagination-area " >
                    {{ $news->links() }}
              </div>
            </div>
        </div>
      <!-- ./row-->
    </div>
  </section>
@endsection
