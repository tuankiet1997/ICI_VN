@extends('layout')
@section('contentcontact')
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
                <a href="{{ URL::to('/ve-chung-toi')}}" class="nav-item nav-link">{{__('lang.about')}}</a>
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
                <a href="{{ URL::to('lien-he')}}" class="nav-item nav-link active">{{__('lang.contact')}}</a>
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
                <h1 class="display-4 text-white animated zoomIn">{{__('lang.Contact Us')}}</h1>
                <a href="" class="h5 text-white">{{__('lang.Home')}}</a>
                <i class="far fa-circle text-white px-2"></i>
                <a href="" class="h5 text-white">{{__('lang.Contact Us')}}</a>
            </div>
        </div>
    </div>
</div>
<!-- Navbar & Carousel End -->
<!-- Full Screen Search Start -->
<div class="modal fade" id="searchModal" tabindex="-1">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                <div class="modal-header border-0">
                    <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center justify-content-center">
                    <div class="input-group" style="max-width: 600px;">
                        <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                        <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->


    <!-- Contact Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">Contact Us</h5>
                <h1 class="mb-0">If You Have Any Query, Feel Free To Contact Us</h1>
            </div>
            <div class="row g-5 mb-5">
                <div class="col-lg-4">
                    <div class="d-flex align-items-center wow fadeIn" data-wow-delay="0.1s">
                        <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 60px; height: 60px;">
                            <i class="fa fa-phone-alt text-white"></i>
                        </div>
                        <div class="ps-4">
                            <h5 class="mb-2">Call to ask any question</h5>
                            <h4 class="text-primary mb-0">+(84)966.889.36</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="d-flex align-items-center wow fadeIn" data-wow-delay="0.4s">
                        <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 60px; height: 60px;">
                            <i class="fa fa-envelope-open text-white"></i>
                        </div>
                        <div class="ps-4">
                            <h5 class="mb-2">Email to get free quote</h5>
                            <h4 class="text-primary mb-0">icivietnam.business@gmail.com</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="d-flex align-items-center wow fadeIn" data-wow-delay="0.8s">
                        <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 60px; height: 60px;">
                            <i class="fa fa-map-marker-alt text-white"></i>
                        </div>
                        <div class="ps-4">
                            <h5 class="mb-2">Visit our office</h5>
                            <h4 class="text-primary mb-0">123 Street, NY, USA</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row g-5">
                <div class="col-lg-6 wow slideInUp" data-wow-delay="0.3s">
                    <form class="col-10 mx-auto p-3 border border-primary" method="post" action="{{ URL::to('/guilienhe')}}">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <input name="name" type="text" class="form-control border-0 bg-light px-4" placeholder="Your Name" style="height: 55px;">
                            </div>
                            <div class="col-md-6">
                                <input name="email" type="email" class="form-control border-0 bg-light px-4" placeholder="Your Email" style="height: 55px;">
                            </div>
                            <div class="col-12">
                                <input name="subject"  type="text" class="form-control border-0 bg-light px-4" placeholder="Subject" style="height: 55px;">
                            </div>
                            <div class="col-12">
                                <textarea name="message" class="form-control border-0 bg-light px-4 py-3" rows="4" placeholder="Message"></textarea>
                            </div>
                            <div class="col-12"> @csrf
                                <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                            </div>
                        </div>
                        @method('POST')
                    </form>
                </div>
                <div class="col-lg-6 wow slideInUp" data-wow-delay="0.6s">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.094120727932!2d105.78347274447161!3d20.988863930911577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc9f37a43e9%3A0xe9704f10805ef49a!2zMTY5LzE1IMSQLiBUcnVuZyBWxINuLCBUZHAgU-G7kSAxNCwgTmFtIFThu6sgTGnDqm0sIEjDoCBO4buZaSAxMDAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1684600241967!5m2!1svi!2s" 
                    width="100%" 
                    height="350" 
                    style="border:0;" 
                    allowfullscreen="" 
                    loading="lazy" 
                    referrerpolicy="no-referrer-when-downgrade">
                </iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <!-- Vendor Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5 mb-5">
            <div class="bg-white">
                <div class="owl-carousel vendor-carousel">
                    <img src="{{ asset('frontend/image/vendor-1.jpg')}}" alt="">
                    <img src="{{ asset('frontend/image/vendor-2.jpg')}}" alt="">
                    <img src="{{ asset('frontend/image/vendor-3.jpg')}}" alt="">
                    <img src="{{ asset('frontend/image/vendor-4.jpg')}}" alt="">
                    <img src="{{ asset('frontend/image/vendor-5.jpg')}}" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->
@endsection