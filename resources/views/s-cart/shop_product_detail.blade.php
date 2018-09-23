@extends($theme.'.shop_layout')
@section('banner')
@endsection

@section('content')
          <div class="product-details"><!--product-details-->
            <div class="col-sm-5">
              <div class="view-product">
                <img src="{{ asset($path_file.'/'.$product->image) }}" alt="" />
              </div>
          @if (count($product->images)>0)
              <div id="similar-product" class="carousel slide" data-ride="carousel">
                  <!-- Wrapper for slides -->
                  <div class="carousel-inner">
                    <div class="item active">
                        <a href="#" class="col-sm-4">
                          <img src="{{ asset($path_file.'/thumb/'.$product->image) }}" alt="">
                        </a>
                       @foreach ($product->images as $key=>$image)
                        <a href="#" class="col-sm-4">
                          <img src="{{ asset($path_file.'/thumb/'.$image->image) }}" alt="">
                        </a>
                          @if ($key % 3 == 1)
                            </div>
                            <div class="item">
                          @endif
                        @endforeach
                    </div>
                  </div>
                  <!-- Controls -->
                  <a class="left item-control" href="#similar-product" data-slide="prev">
                  <i class="fa fa-angle-left"></i>
                  </a>
                  <a class="right item-control" href="#similar-product" data-slide="next">
                  <i class="fa fa-angle-right"></i>
                  </a>
              </div>
          @endif
            </div>

        <form id="buy_block" action="{{ action('Shop@cart') }}" method="post">
          {{ csrf_field() }}
          <input type="hidden" name="product_id" value="{{ $product->id }}" />
            <div class="col-sm-7">
              <div class="product-information"><!--/product-information-->
                @if ($product->price != $product->getPrice())
                <img src="{{ asset($theme.'/images/product-details/sale.png') }}" class="newarrival" alt="" />
                @elseif($product->type == 1)
                <img src="{{ asset($theme.'/images/product-details/new.png') }}" class="newarrival" alt="" />
                @endif
                <h2>{{ $product->name }}</h2>
                <p>SKU: {{ $product->sku }}</p>
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
                <span>
                  <label>Quantity:</label>
                  <input type="number" name="qty" value="1" />
                  <button type="submit" class="btn btn-fefault cart">
                    <i class="fa fa-shopping-cart"></i>
                    Add to cart
                  </button>
                </span>
                <p><b>Availability:</b>
                @if ($configs['show_date_avalid'] && $product->date_available >= date('Y-m-d H:i:s'))
                {{ $product->date_available }}
                @else
                In Stock
                @endif
              </p>
                <p><b>Condition:</b> New</p>
                <p><b>Brand:</b> {{ empty($product->brand->name)?'None':$product->brand->name }}</p>
                <div class="short-description">
                  <b>Quick Overview:</b>
                  <p>{{ $product->description }}</p>
                </div>
              </div><!--/product-information-->
            </div>
          </div><!--/product-details-->
        </form>

          <div class="category-tab shop-details-tab"><!--category-tab-->
            <div class="col-sm-12">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#details" data-toggle="tab">Details</a></li>
                <li><a href="#reviews" data-toggle="tab">Comment</a></li>
              </ul>
            </div>
            <div class="tab-content">
              <div class="tab-pane fade  active in" id="details" >
                {!! $product->content !!}
              </div>

              <div class="tab-pane fade" id="reviews" >
                <div class="col-sm-12">
                  <p><b>Write Your Review</b></p>

                  <form action="#">
                    <span>
                      <input type="text" placeholder="Your Name"/>
                      <input type="email" placeholder="Email Address"/>
                    </span>
                    <textarea name="" ></textarea>
                    <b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
                    <button type="button" class="btn btn-default pull-right">
                      Submit
                    </button>
                  </form>
                </div>
              </div>

            </div>
          </div><!--/category-tab-->

          <div class="recommended_items"><!--recommended_items-->
            <h2 class="title text-center">recommended items</h2>

            <div id="recommended-item-carousel" class="carousel slide">
              <div class="carousel-inner">
               @foreach ($productsToCategory as  $key => $product_real)
                @if ($key % 4 == 0)
                  <div class="item {{  ($key ==0)?'active':'' }}">
                @endif
                  <div class="col-sm-3">
                    <div class="product-image-wrapper">
                      <div class="single-products   product-box-{{ $product_real->id }}">
                          <div class="productinfo text-center">
                            <a href="{{ url('product/'.Scart::str_to_url($product_real->name).'_'.$product_real->id.'.html') }}"><img src="{{ asset($path_file.'/thumb/'.$product_real->image) }}" alt="{{ $product_real->name }}" /></a>
                                @if ($product_real->price == $product_real->getPrice())
                                <div class="price-row">
                                  <span class="price">{{ number_format($product_real->price) }}</span>
                                </div>
                                @else
                                <div class="price-row">
                                  <span class="price"> {{ number_format($product_real->getPrice()) }} </span>
                                  <span  class="price-old"> {{ number_format($product_real->price) }} </span>
                                </div>
                                @endif
                            <a href="{{ url('product/'.Scart::str_to_url($product_real->name).'_'.$product_real->id.'.html') }}"><p>{{ $product_real->name }}</p></a>
                          </div>
                          @if ($product_real->price != $product_real->getPrice())
                          <img src="{{ asset($theme.'/images/home/sale.png') }}" class="new" alt="" />
                          @elseif($product_real->type == 1)
                          <img src="{{ asset($theme.'/images/home/new.png') }}" class="new" alt="" />
                          @endif
                      </div>
                    </div>
                  </div>
                @if ($key % 4 == 3)
                  </div>
                @endif
               @endforeach
              </div>
            </div>
          </div><!--/recommended_items-->
@endsection

@section('breadcrumb')
@endsection

@push('styles')

@endpush
@push('scripts')
@endpush
