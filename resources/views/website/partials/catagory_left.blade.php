
<div id="apollo-verticalmenu" class="block apollo-verticalmenu">
   <div class="title_block">
      <i class="fa fa-bars"></i>
      <span>Danh mục sản phẩm</span>
      <span class="shapes round">
         <em class="shapes bottom"></em>
      </span>
   </div>
   <div class="block_content">
      <div id="verticalmenu" class="verticalmenu" role="navigation">
         <div class="navbar">
            <div class="navbar-ex1-collapse">
               <ul class="nav navbar-nav nav-verticalmenu">
                  @foreach($catagories as $key => $catagory)
                  <li class="parent dropdown @if(isset($catagory_id) && $catagory->id == $catagory_id){{" active"}}@endif">
                     <a href="{{ route('web.catagories',['id'=>$catagory->id,'name'=>$catagory->slug]) }}" title="{{$catagory->name}}">
                        <span class="menu-icon has-icon menu-icon-@if($key<10){{$key+1}}@else{{$key-9}}@endif">
                           <span class="menu-title">{{$catagory->name}}</span>
                        </span>
                     </a>
                  </li>
                  @endforeach
               </ul>
            </div>
         </div>
      </div>
   </div>
</div>