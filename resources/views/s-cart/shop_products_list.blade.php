@extends($theme.'.shop_layout')
@section('banner')
@endsection

@section('content')
  <div class="features_items">
    <h2 class="title text-center">{{ $title }}</h2>
      @if (count($products) ==0)
        Not found content!
      @else
          @foreach ($products as  $key => $product)
          <div class="col-sm-4 col-xs-6">
              <div class="product-image-wrapper">
                <div class="single-products">
                  <div class="productinfo text-center product-box-{{ $product->id }}">
                    <a href="{{ url('product/'.Scart::str_to_url($product->name).'_'.$product->id.'.html') }}"><img src="{{ asset($path_file.'/thumb/'.$product->image) }}" alt="{{ $product->name }}" /></a>

                      @if ($product->price == $product->getPrice())
                      <div class="price-row">
                        <span class="price">{{ number_format($product->price) }}</span>
                      </div>
                      @else
                      <div class="price-row">
                        <span class="price"> {{ number_format($product->getPrice()) }} </span>
                        <span  class="price-old"> {{ number_format($product->price) }} </span>
                      </div>
                      @endif

                    <a href="{{ url('product/'.Scart::str_to_url($product->name).'_'.$product->id.'.html') }}"><p>{{ $product->name }}</p></a>
                    <a href="#" class="btn btn-default add-to-cart" onClick="addToCart({{ $product->id }})"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                  </div>
                  @if ($product->price != $product->getPrice())
                  <img src="{{ asset($theme.'/images/home/sale.png') }}" class="new" alt="" />
                  @elseif($product->type == 1)
                  <img src="{{ asset($theme.'/images/home/new.png') }}" class="new" alt="" />
                  @endif
                </div>
                <div class="choose">
                  <ul class="nav nav-pills nav-justified">
                    <li><a href="#" onClick="addToCart({{ $product->id }},'wishlist')"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                    <li><a href="#" onClick="addToCart({{ $product->id }},'compare')"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                  </ul>
                </div>
              </div>
          </div>
          @endforeach
      @endif
<div style="clear: both; ">
    <ul class="pagination">
      {{ $products->links() }}
  </ul>
</div>

</div>
@endsection


@section('breadcrumb')
{{--     <div class="breadcrumbs">
        <ol class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li class="active">Shopping Cart</li>
        </ol>
      </div> --}}
@endsection


@push('styles')
@endpush
@push('scripts')
@endpush
