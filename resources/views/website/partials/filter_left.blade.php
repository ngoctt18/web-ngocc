<form method="GET" action="">
 <div id="catalog_block" class="block ajax-filter block_shopby">
  <h4 class="title_block">
   Giá
 </h4>
 <div style="" class="block_content">
   <!-- SHOP BY SIZE -->
      <!-- <div class="catalog_filters">
         <div class="catalog_subtitle_heading">
            <span class="catalog_subtitle">Size</span>
         </div>
         <ul id="ul_catalog_size" class="col-md-12 catalog_filter_ul list-unstyled">
            <li class="advanced-filter col-md-6" data-group="Size" data-handle="xs">
               <a href="frontpage/xs.html" title="Narrow selection to products matching tag XS">XS</a>
            </li>
            <li class="advanced-filter col-md-6" data-group="Size" data-handle="s">
               <a href="frontpage/s.html" title="Narrow selection to products matching tag S">S</a>
            </li>
            <li class="advanced-filter col-md-6" data-group="Size" data-handle="m">
               <a href="frontpage/m.html" title="Narrow selection to products matching tag M">M</a>
            </li>
            <li class="advanced-filter col-md-6" data-group="Size" data-handle="l">
               <a href="frontpage/l.html" title="Narrow selection to products matching tag L">L</a>
            </li>
            <li class="advanced-filter col-md-6" data-group="Size" data-handle="xl">
               <a href="frontpage/xl.html" title="Narrow selection to products matching tag XL">XL</a>
            </li>
         </ul>
       </div> -->
       <!-- SHOP BY PRICE -->
       <div class="catalog_filters">
         <div class="catalog_subtitle_heading">
          <span class="catalog_subtitle"></span>
        </div>
        <ul id="ul_catalog_price" class="col-md-12 catalog_filter_ul list-unstyled">
          <li class="advanced-filter {{request('price') == 200000 ? 'price_checked' : ''}}" data-group="Price" data-handle="under-50">
           <a href="{{Request::url().'?price=200000'}}" title="Narrow selection to products matching tag Under $50">Dưới 200.000₫</a>
         </li>
         <li class="advanced-filter {{request('price') == 200000300000 ? 'price_checked' : ''}}" data-group="Price" data-handle="50-100">
           <a href="{{Request::url().'?price=200000300000'}}" title="Narrow selection to products matching tag $50 - $100">200.000₫ - 300.000₫</a>
         </li>
         <li class="advanced-filter {{request('price') == 300000400000 ? 'price_checked' : ''}}" data-group="Price" data-handle="100-200">
           <a href="{{Request::url().'?price=300000400000'}}" title="Narrow selection to products matching tag $100 - $200">300.000₫ - 400.000₫</a>
         </li>
         <li class="advanced-filter {{request('price') == 400000500000 ? 'price_checked' : ''}}" data-group="Price" data-handle="200-400">
           <a href="{{Request::url().'?price=400000500000'}}" title="Narrow selection to products matching tag $200 - $400">400.000₫ - 500.000₫</a>
         </li>
         <li class="advanced-filter {{request('price') == 500000 ? 'price_checked' : ''}}" data-group="Price" data-handle="above-400">
           <a href="{{Request::url().'?price=500000'}}" title="Narrow selection to products matching tag  Above $400">Trên 500.000₫</a>
         </li>
       </ul>
     </div>
     <!-- SHOP BY Color -->
     <!--  <div class="catalog_filters">
        <div class="catalog_subtitle_heading">
           <span class="catalog_subtitle">Color</span>
        </div>
        <ul id="ul_catalog_color" class="col-md-12 list-unstyled color-group">
           <li class="advanced-filter col-lg-6" data-group="Catalog" data-handle="white">
              <span class="catalog_color" style="background-color:#ffffff">&nbsp;</span>
              <a href="frontpage/white.html" title="Narrow selection to products matching tag white">White</a>
           </li>
           <li class="advanced-filter col-lg-6" data-group="Catalog" data-handle="silver">
              <span class="catalog_color" style="background-color:#C0C0C0">&nbsp;</span>
              <a href="frontpage/silver.html" title="Narrow selection to products matching tag silver">Silver</a>
           </li>
           <li class="advanced-filter col-lg-6" data-group="Catalog" data-handle="gray">
              <span class="catalog_color" style="background-color:#808080">&nbsp;</span>
              <a href="frontpage/gray.html" title="Narrow selection to products matching tag gray">Gray</a>
           </li>
           <li class="advanced-filter col-lg-6" data-group="Catalog" data-handle="black">
              <span class="catalog_color" style="background-color:#000000">&nbsp;</span>
              <a href="frontpage/black.html" title="Narrow selection to products matching tag black">Black</a>
           </li>
           <li class="advanced-filter col-lg-6" data-group="Catalog" data-handle="red">
              <span class="catalog_color" style="background-color:#FF0000">&nbsp;</span>
              <a href="frontpage/red.html" title="Narrow selection to products matching tag red">Red</a>
           </li>
           <li class="advanced-filter col-lg-6" data-group="Catalog" data-handle="yellow">
              <span class="catalog_color" style="background-color:#FFFF00">&nbsp;</span>
              <a href="frontpage/yellow.html" title="Narrow selection to products matching tag yellow">Yellow</a>
           </li>
           <li class="advanced-filter col-lg-6" data-group="Catalog" data-handle="green">
              <span class="catalog_color" style="background-color:#008000">&nbsp;</span>
              <a href="frontpage/green.html" title="Narrow selection to products matching tag green">Green</a>
           </li>
           <li class="advanced-filter col-lg-6" data-group="Catalog" data-handle="blue">
              <span class="catalog_color" style="background-color:#0000FF">&nbsp;</span>
              <a href="frontpage/blue.html" title="Narrow selection to products matching tag blue">Blue</a>
           </li>
        </ul>
      </div> -->
    </div>
  </div>
</form>