<section id="breadcrumbs">
    <div class="container">
        <nav role="navigation" aria-label="breadcrumbs">
            <ol class="breadcrumb" itemscope itemtype="">
                <li itemprop="itemListElement" itemscope itemtype="">
                    <a href="{{ route('web.homepage') }}" title="Back to the frontpage" itemprop="item">
                        <span itemprop="name">Home</span>
                    </a>
                </li>
                

                <li class="active" itemprop="itemListElement" itemscope itemtype="">
                    <span itemprop="name">{{$product->name}}</span>
                </li>
                
            </ol>
        </nav>
    </div>
</section>