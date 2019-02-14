<!doctype html>
<html class="no-js">
   <head>
      <meta charset="utf-8">
      <title>@yield('title')</title>
      @include('website.partials.head')
   </head>
   <body id="ap-milk-store" class="template-index  header-default layout-default  skin-default " >
      <div class="website_loader"></div>
      <div id="page">
         <section id="page_content" class="">
            @include('website.partials.header')
            <main class="main-content" role="main">
               <section id="columns" class="columns-container">
                  @yield('content')
               </section>
            </main>
            @include('website.partials.footer')
         </section>
         <p id="back-top">
            <a href="#top" title="Scroll To Top">Scroll To Top</a>
         </p>
      </div>   </body>
   @include('website.partials.scripts')
</html>