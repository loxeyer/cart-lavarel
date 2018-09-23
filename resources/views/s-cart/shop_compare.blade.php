@extends($theme.'.shop_layout')
@section('banner')
@endsection

@section('main')
<section >
<div class="container">
    <div class="row">
        <h2 class="title text-center">{{ $title }}</h2>
        @if (count($compare) ==0)
            <div class="col-md-12 text-danger">
               Not found!
            </div>
        @else
<div class="table-responsive">
<table class="table box table-bordered">
    <tbody>
   <tr>
    @php
        $n = 0;
    @endphp
    @foreach($compare as $key => $item)
        @php
            $n++;
            $product = App\Models\ShopProduct::find($item->id);
        @endphp
       <td align="center">
           {{ $product->name }}({{ $product->sku }})
           <hr>
            <a href="{{ url('products/'.Scart::str_to_url($product->name).'_'.$product->id.'.html') }}"><img width="100" src="{{asset($path_file.'/'.$product->image)}}" alt=""></a>
            <hr>
            {!! $product->showPrice() !!}
            <hr>
            {!! $product->description !!}
            <hr>
            <a onClick="return confirm('Confirm')" title="Remove Item" alt="Remove Item" class="cart_quantity_delete" href="{{url("removeItem_compare/$item->rowId")}}"><i class="fa fa-times"></i></a>
       </td>
       @if ($n % 4 == 0)
      </tr>
       @endif
    @endforeach
</tr>
    </tbody>
  </table>
  </div>
        @endif
        </div>
    </div>
</section>
@endsection

@section('breadcrumb')
@endsection

@push('scripts')
</script>
@endpush
