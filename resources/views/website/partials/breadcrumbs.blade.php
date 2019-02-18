<section id="breadcrumbs">
    <div class="container">
        <nav role="navigation" aria-label="breadcrumbs">
            <ol class="breadcrumb" itemscope itemtype="">
                <li itemprop="itemListElement" itemscope itemtype="">
                    <a href="{{ route('web.homepage') }}" title="Back to the frontpage" itemprop="item">
                        <span itemprop="name">Home</span>
                    </a>
                </li>

                @isset(($breadcrumb->catagory->catagoryType))
                <li itemprop="itemListElement" itemscope itemtype="">
                    <a href="" title="Back to the frontpage" itemprop="item">
                        <span itemprop="name">{{$breadcrumb->catagory->catagoryType->name}}</span>
                    </a>
                </li>
                @endisset

                @isset(($breadcrumb->catagory))
                <li itemprop="itemListElement" itemscope itemtype="">
                    <a href="" title="Back to the frontpage" itemprop="item">
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