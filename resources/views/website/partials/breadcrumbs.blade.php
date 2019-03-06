<section id="breadcrumbs">
    <div class="container">
        <nav role="navigation" aria-label="breadcrumbs">
            <ol class="breadcrumb" itemscope itemtype="">
                <li itemprop="itemListElement" itemscope itemtype="">
                    <a href="{{ route('web.homepage') }}" title="Back to the homepage" itemprop="item">
                        <span itemprop="name">Home</span>
                    </a>
                </li>

                @isset(($breadcrumb->catagory->catagoryType))
                <li itemprop="itemListElement" itemscope itemtype="">
                    <a href="{{ route('web.catagory_types', [$breadcrumb->catagory->catagoryType->id, $breadcrumb->catagory->catagoryType->name]) }}" title="Back to the catagory type tpage" itemprop="item">
                        <span itemprop="name">{{$breadcrumb->catagory->catagoryType->name}}</span>
                    </a>
                </li>
                @endisset

                @isset(($breadcrumb->catagoryType))
                <li itemprop="itemListElement" itemscope itemtype="">
                    <a href="{{ route('web.catagory_types', [$breadcrumb->catagoryType->id, $breadcrumb->catagoryType->name]) }}" title="Back to the catagory type tpage" itemprop="item">
                        <span itemprop="name">{{$breadcrumb->catagoryType->name}}</span>
                    </a>
                </li>
                @endisset

                @isset(($breadcrumb->catagory))
                <li itemprop="itemListElement" itemscope itemtype="">
                    <a href="{{ route('web.catagories', [$breadcrumb->catagory->id, $breadcrumb->catagory->name]) }}" title="Back to the catagory page" itemprop="item">
                        <span itemprop="name">{{$breadcrumb->catagory->name}}</span>
                    </a>
                </li>
                @endisset

                @isset(($breadcrumb_new))
                <li itemprop="itemListElement" itemscope itemtype="">
                    <a href="{{ route('web.news') }}" title="Back to the frontpage" itemprop="item">
                        <span itemprop="name">{{$breadcrumb_new??''}}</span>
                    </a>
                </li>
                @endisset

                <li class="active" itemprop="itemListElement" itemscope itemtype="">
                    <span itemprop="name">{{$breadcrumb->name??$breadcrumb}}</span>
                </li>
                
            </ol>
        </nav>
    </div>
</section>