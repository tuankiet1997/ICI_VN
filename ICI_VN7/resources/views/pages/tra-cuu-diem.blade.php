@extends('layout')
@section('contenttracuudiem')
<!-- Navbar & Carousel Start -->
<div class="container-fluid position-relative p-0">
    <nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
    <a href="{{ URL::to('/trang-chu')}}" class="header-logo" rel="home" itemprop="url">
        <img width="137" 
            height="70" 
            src="{{ asset('frontend/image/imgpsh_fullsize_anim.png')}}"
            class="header-logo-image" 
            alt="ICIVN" 
            decoding="async" 
            loading="lazy">
    </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="{{ URL::to('/trang-chu')}}" class="nav-item nav-link">@lang('lang.home')</a>
                <a href="{{ URL::to('/ve-chung-toi')}}" class="nav-item nav-link active">{{__('lang.about')}}</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">{{__('lang.score_lookup')}}</a>
                    <div class="dropdown-menu m-0">
                        <a href="price.html" class="dropdown-item">Tra cứu điểm</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">{{__('lang.product')}}</a>
                    <div class="dropdown-menu m-0">
                        <a href="price.html" class="dropdown-item">Pricing Plan</a>
                        <a href="feature.html" class="dropdown-item">Our features</a>
                        <a href="team.html" class="dropdown-item">Team Members</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                        <a href="quote.html" class="dropdown-item">Free Quote</a>
                    </div>
                </div>
                <a href="{{ URL::to('lien-he')}}" class="nav-item nav-link">{{__('lang.contact')}}</a>
            </div>
            <button type="button" class="btn text-primary ms-3 search-button" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fa fa-search"></i></button>
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <?php if(Config::get('languages')[App::getLocale()]['flag-icon'] == 'en'): ?>
                    <img width="30" height="25" src="{{ asset('frontend/image/en.png')}}" class="icon-logo-languge">
                <?php else: ?>
                    <img width="30" height="25" src="{{ asset('frontend/image/vn.png')}}" class="icon-logo-languge">
                <?php endif;?>
                    {{ Config::get('languages')[App::getLocale()]['display'] }}
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                @foreach (Config::get('languages') as $lang => $language)
                    @if ($lang != App::getLocale())
                            <a class="dropdown-item" href="{{ route('lang.switch', $lang) }}">
                            <?php if($language['flag-icon'] == 'en'): ?>
                                <img width="30" height="25" src="{{ asset('frontend/image/en.png')}}" class="icon-logo-languge">
                            <?php else: ?>
                                <img width="30" height="25" src="{{ asset('frontend/image/vn.png')}}" class="icon-logo-languge">
                            <?php endif;?>
                                {{$language['display']}}
                            </a>
                    @endif
                @endforeach
            </div>
        </li>
        </div>
    </nav>
    <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
    <div class="row py-5">
        <div class="col-12 pt-lg-5 mt-lg-5 text-center">
            <h1 class="display-4 text-white animated zoomIn">{{__('lang.Tra-cuu-diem')}}</h1>
            <a href="" class="h5 text-white">@lang('lang.Home')</a>
            <i class="far fa-circle text-white px-2"></i>
            <a href="" class="h5 text-white">{{__('lang.Tra-cuu-diem')}}</a>
        </div>
    </div>
</div>
</div>
<!-- Navbar & Carousel End -->
@endsection