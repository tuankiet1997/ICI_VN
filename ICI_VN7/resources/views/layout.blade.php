<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>ICI Viet Nam</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="{{ asset('frontend/image/imgpsh_fullsize_anim.png')}}" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ asset('frontend/scss/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{ asset('frontend/scss/animate.min.css')}}" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('frontend/scss/bootstrap.min.css')}}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{ asset('frontend/scss/style.css')}}" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner"></div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <div class="container-fluid bg-dark px-5 d-none d-lg-block">
        <div class="row gx-0">
            <div class="col-lg-8-topbar text-center text-lg-start mb-2 mb-lg-0 ">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <small class="me-3 text-light"><i class="fa fa-phone-alt me-2"></i>Hotline: +84 966889360</small>
                    <small class="text-light"><i class="fa fa-envelope-open me-2"></i>icivietnam.business@gmail.com</small>
                </div>
            </div>
            <div class="header-block-block-marquee">
                <p>
                    <marquee>
                        <a href="#">{{__('lang.topbar')}}</a>
                    </marquee>
                </p>
            </div>
            <div class="col-lg-4-topbar text-center text-lg-end">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href="mailto:icivietnam.business@gmail.com"><i class="fa fa-envelope fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href="https://www.facebook.com/lovely.sapphire.16"><i class="fab fa-facebook-f fw-normal"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->
    @yield('contenthome')
    @yield('contentabout')
    @yield('contentcontact')
    @yield('contentquote')
    @yield('contenttracuudiem')
    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light mt-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-4 col-md-6 footer-about">
                    <div class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary p-4">
                    <a href="{{ URL::to('/trang-chu')}}" class="header-logo" rel="home" itemprop="url">
                        <img width="137" 
                            height="70"
                            src="{{ asset('frontend/image/imgpsh_fullsize_anim.png')}}"
                            class="header-logo-image" 
                            alt="ICIVN" 
                            decoding="async"
                            loading="lazy">
                    </a>
                        <p class="mt-3 mb-4">{{__('lang.dkkd')}}</p>
                        <form action="">
                            <div class="input-group">
                                <input type="text" class="form-control border-white p-3" placeholder="{{__('lang.your_email')}}">
                                <button class="btn btn-dark">{{__('lang.sign_up')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-8 col-md-6">
                    <div class="row gx-5">
                        <div class="col-lg-4 col-md-12 pt-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">ICI VIETNAM</h3>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-geo-alt text-primary me-2"></i>
                                <p class="mb-0">Số nhà 17 Trung Văn, Nam Từ Liêm, Hà Nội</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-envelope-open text-primary me-2"></i>
                                <p class="mb-0">icivietnam.business@gmail.com</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-telephone text-primary me-2"></i>
                                <p class="mb-0">+(84)966.889.360</p>
                            </div>
                            <div class="google-map-footer">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.094120727932!2d105.78347274447161!3d20.988863930911577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc9f37a43e9%3A0xe9704f10805ef49a!2zMTY5LzE1IMSQLiBUcnVuZyBWxINuLCBUZHAgU-G7kSAxNCwgTmFtIFThu6sgTGnDqm0sIEjDoCBO4buZaSAxMDAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1684600241967!5m2!1svi!2s" 
                                width="100%" 
                                height="70" 
                                style="border:0;" 
                                allowfullscreen="" 
                                loading="lazy" 
                                referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">{{__('lang.service')}}</h3>
                            </div>
                            <div class="link-animated d-flex flex-column justify-content-start">
                                <a class="text-light mb-2" href="{{ URL::to('/trang-chu')}}"><i class="bi bi-arrow-right text-primary me-2"></i>@lang('lang.home')</a>
                                <a class="text-light mb-2" href="{{ URL::to('/ve-chung-toi')}}"><i class="bi bi-arrow-right text-primary me-2"></i>{{__('lang.about')}}</a>
                                <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Our Services</a>
                                <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Meet The Team</a>
                                <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Latest Blog</a>
                                <a class="text-light" href="{{ URL::to('lien-he')}}"><i class="bi bi-arrow-right text-primary me-2"></i>{{__('lang.contact')}}</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">{{__('lang.fanpage_facebook')}}</h3>
                            </div>
                            <div id="fb-root"></div>
                            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v16.0&appId=2540394552718664&autoLogAppEvents=1" nonce="ujKzYHJw"></script>
                            <div class="fb-page" data-href="https://www.facebook.com/profile.php?id=100071161122808" data-tabs="" data-width="300" data-height="" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/profile.php?id=100071161122808" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/profile.php?id=100071161122808">Mimon Pet Shop</a></blockquote></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-white" style="background: #061429;">
        <div class="container text-center">
            <div class="row justify-content-end">
                <div class="col-lg-8 col-md-6">
                    <div class="d-flex align-items-center justify-content-center" style="height: 75px;">
                    <p class="mb-0">&copy; <a class="text-white border-bottom" href="#">{{__('lang.copyright')}}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('frontend/jss/wow.min.js')}}"></script>
    <script src="{{ asset('frontend/jss/easing.min.js')}}"></script>
    <script src="{{ asset('frontend/jss/waypoints.min.js')}}"></script>
    <script src="{{ asset('frontend/jss/counterup.min.js')}}"></script>
    <script src="{{ asset('frontend/jss/owl.carousel.min.js')}}"></script>

    <!-- Template Javascript -->
    <script src="{{ asset('frontend/jss/main.js')}}"></script>

    <!-- Icon Phone -->
    <div class="hotline-phone-ring-wrap">
        <div class="hotline-phone-ring">
            <div class="hotline-phone-ring-circle"></div>
            <div class="hotline-phone-ring-circle-fill"></div>
            <div class="hotline-phone-ring-img-circle">
            <a href="tel:0966889360" class="pps-btn-img">
                <img src="https://nocodebuilding.com/wp-content/uploads/2020/07/icon-call-nh.png" alt="Gọi điện thoại" width="50">
            </a>
            </div>
        </div>
        <div class="hotline-bar">
            <a href="tel:0966889360">
                <span class="text-hotline">0966 889 360</span>
            </a>
        </div>
    </div>

    <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "109271201531957");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v16.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>
</body>

</html>