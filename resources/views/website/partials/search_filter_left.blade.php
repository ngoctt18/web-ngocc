{{-- <form method="GET" action=""> --}}
  <div id="catalog_block" class="block ajax-filter block_shopby">
    <div class="title_block">
      <i class="fa fa-bars"></i>
      <span>Danh mục sản phẩm</span>
      <span class="shapes round">
        <em class="shapes bottom"></em>
      </span>
    </div>
    <div style="" class="block_content">
      <!-- SHOP BY PRICE -->
      <div class="catalog_filters">
        <div class="catalog_subtitle_heading">
          <span class="catalog_subtitle"></span>
        </div>
        <ul id="ul_catalog_price" class="col-md-12 catalog_filter_ul_ list-unstyled">
          @foreach($catagories as $key => $catagory)
          <li class="advanced-filter {{request('cat_id[]') == $catagory->id ? 'price_checked' : ''}}" >
            <input type="checkbox" value="{{$catagory->id}}" name="cat_id[]" id="cat_id_{{$key}}" @if (is_array(Request::query('cat_id', NULL))) @if (in_array($catagory->id, Request::query('cat_id', NULL))) {{'checked'}} @else {{''}} @endif @endif> <label for="cat_id_{{$key}}">{{$catagory->name}}</label>
          </li>

          @endforeach
        </ul>
      </div>
    </div>
  </div>
  <div id="catalog_block" class="block ajax-filter block_shopby">
    <h4 class="title_block">
      Khoảng giá
    </h4>
    <div style="" class="block_content">
      <!-- SHOP BY PRICE -->
      <div class="catalog_filters">
        <div class="catalog_subtitle_heading">
          <div class="row">
            <div class="col-md-5">
              <input type="number" min="0" step="50000" name="price_min" class="input_price" value="{{request('price_min')}}">
            </div>
            <div class="col-md-2 text-center">
              <label> - </label>
            </div>
            <div class="col-md-5">
              <input type="number" min="0" step="50000" name="price_max" class="input_price" value="{{request('price_max')}}">
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-md-5">
              <input type="submit" class="btn btn-success" value="Áp dụng">
            </div>
          </div>
        </div>
      </div>
      {{-- <div class="catalog_filters">
        <div class="catalog_subtitle_heading">
          <span class="catalog_subtitle"></span>
        </div>
        <ul id="ul_catalog_price" class="col-md-12 catalog_filter_ul_ list-unstyled">
          <li class="advanced-filter {{request('price') == 200000 ? 'price_checked' : ''}}" >
            <input type="checkbox" name="price" id="price_200000"> 
            <label for="price_200000">Dưới 200.000₫</label>
            <a href="{{ route('web.search', ['query'=>request('query'), 'cat_id'=>request('cat_id'), 'price'=>200000]) }}" >Dưới 200.000₫</a>
          </li>
          <li class="advanced-filter {{request('price') == 200000300000 ? 'price_checked' : ''}}" >
            <input type="checkbox" name="price" id="price_{{$key}}"> 
            <label for="price_200000">Dưới 200.000₫</label>
            <a href="{{ route('web.search', ['query'=>request('query'), 'cat_id'=>request('cat_id'), 'price'=>200000300000]) }}" >200.000₫ - 300.000₫</a>
          </li>
          <li class="advanced-filter {{request('price') == 300000400000 ? 'price_checked' : ''}}" >
            <input type="checkbox" name="price" id="price_{{$key}}"> 
            <label for="price_200000">Dưới 200.000₫</label>
            <a href="{{ route('web.search', ['query'=>request('query'), 'cat_id'=>request('cat_id'), 'price'=>300000400000]) }}" >300.000₫ - 400.000₫</a>
          </li>
          <li class="advanced-filter {{request('price') == 400000500000 ? 'price_checked' : ''}}" >
            <input type="checkbox" name="price" id="price_{{$key}}"> 
            <label for="price_200000">Dưới 200.000₫</label>
            <a href="{{ route('web.search', ['query'=>request('query'), 'cat_id'=>request('cat_id'), 'price'=>400000500000]) }}" >400.000₫ - 500.000₫</a>
          </li>
          <li class="advanced-filter {{request('price') == 500000 ? 'price_checked' : ''}}" >
            <input type="checkbox" name="price" id="price_{{$key}}"> 
            <label for="price_200000">Dưới 200.000₫</label>
            <a href="{{ route('web.search', ['query'=>request('query'), 'cat_id'=>request('cat_id'), 'price'=>500000]) }}" >Trên 500.000₫</a>
          </li>
        </ul>
      </div> --}}
    </div>
  </div>
{{-- </form> --}}