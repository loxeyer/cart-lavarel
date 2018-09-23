<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{{ empty($description)?'':$description }}">
    <meta name="keyword" content="{{ empty($keyword)?'':$keyword }}">
    <meta property="fb:app_id" content="{{ $configs['site_fb_appID'] }}" />
    <title>{{ empty($title)?'':$title }}</title>
    <meta property="og:image" content="{{ !empty($og_image)?$og_image:asset('images/org.jpg') }}" />
    <meta property="og:url" content="{{ \Request::fullUrl() }}" />
    <meta property="og:type" content="Website" />
    <meta property="og:title" content="{{ empty($title)?'':$title }}" />
    <meta property="og:description" content="{{ empty($description)?'':$description }}" />
    <link href="{{ asset($theme_asset.'/css/bootstrap.min.css')}}"" rel="stylesheet">
    <link href="{{ asset($theme_asset.'/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{ asset($theme_asset.'/css/prettyPhoto.css')}}" rel="stylesheet">
    <link href="{{ asset($theme_asset.'/css/animate.css')}}" rel="stylesheet">
    <link href="{{ asset($theme_asset.'/css/main.css')}}" rel="stylesheet">
    <link href="{{ asset($theme_asset.'/css/responsive.css')}}" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="{{ asset($theme_asset.'/js/html5shiv.js')}}"></script>
    <script src="{{ asset($theme_asset.'/js/respond.min.js')}}"></script>
    <![endif]-->
    <link rel="shortcut icon" href="{{ asset($theme_asset.'/images/ico/favicon.ico')}}">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{ asset($theme_asset.'/images/ico/apple-touch-icon-144-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{{ asset($theme_asset.'/images/ico/apple-touch-icon-114-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{{ asset($theme_asset.'/images/ico/apple-touch-icon-72-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" href="{{ asset($theme_asset.'/images/ico/apple-touch-icon-57-precomposed.png')}}">
    <style type="text/css">
      .price{
        color:#FE980F;
        font-size: 20px;
        padding: 10px;
        font-weight:bold;
      }
      .price-old {
        text-decoration: line-through;
        color: #a95d5d;
        font-size: 17px;
        padding: 10px;
      }
    </style>
</head><!--/head-->
<body>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = '//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId={{ $configs['site_fb_appID'] }}';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>

  <header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <div class="contactinfo">
              <ul class="nav nav-pills">
                <li><a href="#"><i class="fa fa-phone"></i> {{ $configs_global['phone'] }}</a></li>
                <li><a href="#"><i class="fa fa-envelope"></i> {{ $configs_global['email'] }}</a></li>
              </ul>
            </div>
          </div>
{{--           <div class="col-sm-6">
            <div class="btn-group pull-right">
              <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                  USA
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                  <li><a href="#">Canada</a></li>
                  <li><a href="#">UK</a></li>
                </ul>
              </div>
               <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                  DOLLAR
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                  <li><a href="#">Canadian Dollar</a></li>
                  <li><a href="#">Pound</a></li>
                </ul>
              </div>
            </div>
          </div> --}}
        </div>
      </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="logo pull-left">
              <a href="{{ url('/') }}"><img style="width: 150px;" src="{{ $logo }}" alt="" /></a>
            </div>
          </div>
          <div class="col-sm-8">
            <div class="shop-menu pull-right">
              <ul class="nav navbar-nav">
                <li><a href="{{ url('profile.html') }}"><i class="fa fa-user"></i> Account</a></li>
                <li><a href="{{ url('wishlist.html') }}"><span style="border-radius: 3px;padding: 5px;" class="label_top label-warning shopping-wishlist" id="count_wishlist">{{ Cart::instance('wishlist')->count() }}</span><i class="fa fa-star"></i> Wishlist</a></li>
                <li><a href="{{ url('compare.html') }}"><span style="border-radius: 3px;padding: 5px;" class="label_top label-warning shopping-compare" id="count_compare">{{ Cart::instance('compare')->count() }}</span><i class="fa fa-crosshairs"></i> Compare</a></li>
                <li><a href="{{ url('cart.html') }}"><span style="border-radius: 3px;padding: 5px;" class="label_top label-warning shopping-cart" id="count_cart">{{ Cart::instance('default')->count() }}</span><i class="fa fa-shopping-cart"></i> Cart</a></li>
                @guest
                <li><a href="{{ url('login.html') }}"><i class="fa fa-lock"></i> Login</a></li>
                @else
                <li><a href="{{ route('logout') }}" rel="nofollow" onclick="event.preventDefault();
                   document.getElementById('logout-form').submit();"><i class="fa fa-power-off"></i> Logout</a></li>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
                </form>
                @endguest

              </ul>
            </div>
          </div>
        </div>
      </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
      <div class="container">
        <div class="row">
          <div class="col-sm-9">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div>
            <div class="mainmenu pull-left">
              <ul class="nav navbar-nav collapse navbar-collapse">
                <li><a href="{{ url('/') }}" class="active">Home</a></li>
                <li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                    <ul role="menu" class="sub-menu">
                        <li><a href="{{ url('products.html') }}">Products</a></li>
                        <li><a href="{{ url('compare.html') }}">Compare</a></li>
                        <li><a href="{{ url('cart.html') }}">Cart</a></li>
                        <li><a href="{{ url('login.html') }}">Login</a></li>
                    </ul>
                </li>
                <li><a href="{{ url('blogs.html') }}">Blog</a></li>
                <li><a href="{{ url('about.html') }}">About</a></li>
                <li><a href="{{ url('contact.html') }}">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="search_box pull-right">
              <form id="searchbox" method="get" action="{{ url('search.html') }}" >
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Your keyword..." name="keyword">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div><!--/header-bottom-->
  </header><!--/header-->

  @yield('banner')


@if(Session::has('message'))
    <div class="alert alert-success">{!! Session::get('message') !!}</div>
@endif
@if(Session::has('error'))
    <div class="alert alert-danger">{!! Session::get('error') !!}</div>
@endif

@if ($configs_global['status'])
  @yield('notice')
  @yield('breadcrumb')
  <section>
    <div class="container">
      <div class="row">
        @section('main')
        <div class="col-sm-3">
          <div class="left-sidebar">
            <h2>Category</h2>
            <div class="panel-group category-products" id="accordian">
              <!--category-productsr-->
            @foreach ($categories as $key =>  $category)
              @if (count($category->getChildrens($category->id))>0)
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordian" href="#{{ $key }}">
                      <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                      {{ $category->name }}
                    </a>
                  </h4>
                </div>
                <div id="{{ $key }}" class="panel-collapse collapse">
                  <div class="panel-body">
                    <ul>
                      @foreach ($category->getChildrens($category->id) as $cateChild)
                          <li>
                              <a href="{{ url('shop/'.Scart::str_to_url($cateChild->name).'_'.$cateChild->id.'.html') }}">{{ $cateChild->name }}</a>
                          </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
              </div>
              @else
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title"><a href="{{ url('shop/'.Scart::str_to_url($category->name).'_'.$category->id.'.html') }}">{{ $category->name }}</a></h4>
                  </div>
                </div>
             @endif
          @endforeach
            </div><!--/category-products-->

            <div class="brands_products"><!--brands_products-->
              <h2>Brands</h2>
              <div class="brands-name">
                <ul class="nav nav-pills nav-stacked">
                  @foreach ($brands as $brand)
                    <li><a href="{{ url('brand/'.Scart::str_to_url($brand->name).'_'.$brand->id.'.html') }}"> <span class="pull-right">({{ $brand->products()->count() }})</span>{{ $brand->name }}</a></li>
                  @endforeach
                </ul>
              </div>
            </div><!--/brands_products-->

            <div class="shipping text-center"><!--shipping-->
              <img src="{{ asset($theme.'/images/home/shipping.jpg') }}" alt="" />
            </div><!--/shipping-->

          </div>
        </div>
        @show

        <div class="col-sm-9 padding-right">
           @yield('content')
        </div>
      </div>
    </div>
  </section>

@else
  <section>
    <div class="container">
      <div class="row">
        <div id="columns" class="container"  style="color:red;text-align: center;">
          <img src="{{ asset('images/maintenance.png') }}"><br>
          <h3><i class="fas fa-exclamation"></i>Sorry! We are currently doing site maintenance!</h3>
            <!-- /.col -->
        </div>
      </div>
    </div>
  </section>
@endif


  <footer id="footer"><!--Footer-->
    <div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-sm-2">
            <div class="companyinfo">
              <h2>S-CART</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
            </div>
          </div>
          <div class="col-sm-7">
            <div class="col-sm-3">
              <div class="video-gallery text-center">
                <a href="#">
                  <div class="iframe-img">
                    <img src="{{ asset('s-cart/images/home/iframe1.png') }}" alt="" />
                  </div>
                  <div class="overlay-icon">
                    <i class="fa fa-play-circle-o"></i>
                  </div>
                </a>
                <p>Circle of Hands</p>
                <h2>24 DEC 2014</h2>
              </div>
            </div>

            <div class="col-sm-3">
              <div class="video-gallery text-center">
                <a href="#">
                  <div class="iframe-img">
                    <img src="{{ asset('s-cart/images/home/iframe2.png') }}" alt="" />
                  </div>
                  <div class="overlay-icon">
                    <i class="fa fa-play-circle-o"></i>
                  </div>
                </a>
                <p>Circle of Hands</p>
                <h2>24 DEC 2014</h2>
              </div>
            </div>

            <div class="col-sm-3">
              <div class="video-gallery text-center">
                <a href="#">
                  <div class="iframe-img">
                   <img src="{{ asset('s-cart/images/home/iframe3.png') }}" alt="" />
                  </div>
                  <div class="overlay-icon">
                    <i class="fa fa-play-circle-o"></i>
                  </div>
                </a>
                <p>Circle of Hands</p>
                <h2>24 DEC 2014</h2>
              </div>
            </div>

            <div class="col-sm-3">
              <div class="video-gallery text-center">
                <a href="#">
                  <div class="iframe-img">
                    <img src="{{ asset('s-cart/images/home/iframe4.png') }}" alt="" />
                  </div>
                  <div class="overlay-icon">
                    <i class="fa fa-play-circle-o"></i>
                  </div>
                </a>
                <p>Circle of Hands</p>
                <h2>24 DEC 2014</h2>
              </div>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="address">
              <img src="{{ asset('s-cart/images/home/map.png') }}" alt="" />
              <p>{{ $configs_global['address'] }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-widget">
      <div class="container">
        <div class="row">
          <div class="col-sm-2">
            <div class="single-widget">
              <h2>Service</h2>
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#">Online Help</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Order Status</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-2">
            <div class="single-widget">
              <h2>Quock Shop</h2>
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#">T-Shirt</a></li>
                <li><a href="#">Mens</a></li>
                <li><a href="#">Womens</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-2">
            <div class="single-widget">
              <h2>Policies</h2>
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#">Terms of Use</a></li>
                <li><a href="#">Privecy Policy</a></li>
                <li><a href="#">Refund Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-2">
            <div class="single-widget">
              <h2>About us</h2>
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#">Company Information</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Store Location</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-3 col-sm-offset-1">
            <div class="single-widget">
              <h2>About Shopper</h2>
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#">Address: {{ $configs_global['address'] }}</a></li>
                <li><a href="#">Hotline: {{ $configs_global['long_phone'] }}</a></li>
                <li><a href="#">Email: {{ $configs_global['email'] }}</a></li>
            </ul>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <p class="pull-left">Copyright © 2018 <a href="{{ url('http://s-cart.org') }}">S-CART</a> Inc. All rights reserved.</p>
          <p class="pull-right">Hosted by  <span><a target="_blank" href="http://giaiphap247.com">GiaiPhap247</a></span></p>
        </div>
      </div>
    </div>
  </footer><!--/Footer-->


  <script src="{{ asset($theme_asset.'/js/jquery.js')}}"></script>
  <script src="{{ asset($theme_asset.'/js/jquery-ui.min.js')}}"></script>
  <script src="{{ asset($theme_asset.'/js/bootstrap.min.js')}}"></script>
  <script src="{{ asset($theme_asset.'/js/jquery.scrollUp.min.js')}}"></script>
  <script src="{{ asset($theme_asset.'/js/jquery.prettyPhoto.js')}}"></script>
  <script src="{{ asset($theme_asset.'/js/main.js')}}"></script>


@stack('scripts')

    <script type="text/javascript">
      function formatNumber (num) {
          return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")
      }
      $('#shipping').change(function(){
          $('#total').html(formatNumber(parseInt({{ Cart::subtotal() }})+ parseInt($('#shipping').val())));
      });
    </script>

    <script type="text/javascript">
        function addToCart(id,instance = null){
            if(instance == null || instance ==''){
              var cart = $('.shopping-cart');
            }else{
              var cart = $('.shopping-'+instance);
            }
                var imgtodrag = $('.product-box-'+id).find("img").eq(0);
                if (imgtodrag) {
                    var imgclone = imgtodrag.clone()
                        .offset({
                        top: imgtodrag.offset().top,
                        left: imgtodrag.offset().left
                    })
                        .css({
                        'opacity': '0.5',
                            'position': 'absolute',
                            'width': '150px',
                            'z-index': '99999999'
                    })
                        .appendTo($('body'))
                        .animate({
                        'top': cart.offset().top,
                            'left': cart.offset().left,
                            'width': 75,
                            'height': 75
                    }, 1000, 'easeInOutExpo');
                    // setTimeout(function () {
                    //     cart.effect("shake", {times: 2}, 200);
                    // }, 1500);

                    imgclone.animate({
                        'width': 0,
                            'height': 0
                    }, function () {
                        $(this).detach()
                    });
                }

        $.ajax({
            url: '{{ action('Shop@addToCart') }}',
            type: 'POST',
            dataType: 'json',
            data: {id: id,instance:instance, _token:'{{ csrf_token() }}'},
            success: function(data){
              console.log(data);
                error= parseInt(data.error);
                if(error ===0)
                {
                  setTimeout(function () {
                    if(data.instance =='default'){
                      $('#count_cart').html(data.count_cart);
                      $('.actions').show();
                    }else{
                      $('#count_'+data.instance).html(data.count_cart);
                    }

                  }, 1000);
                }else{
                  // alert(data.error);
                }

                }
        });

    }

</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-125870439-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-125870439-1');
</script>

</body>
</html>
