@extends('web.layouts.app')

@section('content')
    {{-- Slider Starts --}}
    <section class="site_slider">
        <div class="container-fluid p-0">
            <div class="main-slider">
                <div class="loop" style="background-image: url(assets/image/site-banner.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="decs">
                                    <h1>Reliable care, wagging tails guaranteed!</h1>
                                    <p>We provide pet owners in the UK with reliable pet sitters. A pet sitter makes sure
                                        your pet is fed, clean, and happy while you are away. Our service is safe and
                                        easy—we connect you to the best sitters in town.</p>

                                </div>
                                <div class="more">
                                    <ul>
                                        <li>
                                            <a href="{{ route('ad.lists') }}">Find A Job</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('ad.create') }}">Post An Ad</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="loop" style="background-image: url(assets/image/site-banner.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="decs">
                                    <h1>Reliable care, wagging tails guaranteed!</h1>
                                    <p>We provide pet owners in the UK with reliable pet sitters. A pet sitter makes sure
                                        your pet is fed, clean, and happy while you are away. Our service is safe and
                                        easy—we connect you to the best sitters in town.</p>
                                </div>
                                <div class="more">
                                    <ul>
                                        <li>
                                            <a href="{{ route('ad.lists') }}">Find A Job</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('ad.create') }}">Post An Ad</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="loop" style="background-image: url(assets/image/site-banner.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="decs">
                                    <h1>Reliable care, wagging tails guaranteed!</h1>
                                    <p>We provide pet owners in the UK with reliable pet sitters. A pet sitter makes sure
                                        your pet is fed, clean, and happy while you are away. Our service is safe and
                                        easy—we connect you to the best sitters in town.</p>
                                </div>
                                <div class="more">
                                    <ul>
                                        <li>
                                            <a href="{{ route('ad.lists') }}">Find A Job</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('ad.create') }}">Post An Ad</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="loop" style="background-image: url(assets/image/site-banner.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="decs">
                                    <h1>Reliable care, wagging tails guaranteed!</h1>
                                    <p>We provide pet owners in the UK with reliable pet sitters. A pet sitter makes sure
                                        your pet is fed, clean, and happy while you are away. Our service is safe and
                                        easy—we connect you to the best sitters in town.</p>
                                </div>
                                <div class="more">
                                    <ul>
                                        <li>
                                            <a href="{{ route('ad.lists') }}">Find A Job</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('ad.create') }}">Post An Ad</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- Slider Ends --}}

    {{-- Section 1 Starts --}}
    <section class="section_1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="desc text-center desc-1">
                        <h3>WELCOME TO</h3>
                        <h2>PET LODGER</h2>
                        <p>We are a pet-sitting service offering caring and gentle pet sitters. Our service keeps your pets
                            safe and happy in your absence—leaving you stress-free and relaxed. All vets agree that pets
                            feel safer in familiar territory—our sitters take lovely care of pets in their own homes all
                            over the UK.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="desc desc-2">
                        <h3>WHO WE ARE</h3>
                        <h2>We’ve been here from the beginning</h2>
                        <p>We link pet owners in the UK with reliable pet sitters they can trust. We prefer to keep
                            house-sitting effortless—booking a sitter from our website is as easy as it gets. We are here to
                            connect you with pet sitters who will treat your pets like family. </p>
                        <p>Providing your pets love and care in your absence is the greatest gift and most pets are
                            comfortable in their homes. Our trustworthy sitters will keep your pets happy, your home secure,
                            and your mind relaxed. Join now to become a part of our lively, kind, and smart community.
                            Through our pet-sitting services, bring joy to your pets today.</p>
                    </div>
                    <div class="more">
                        <a href="{{ route('about') }}">Read More</a>
                    </div>
                </div>
                <div class="col-md-6 pic-head">
                    <div class="pic pic-1">
                        <img src="{{ asset('assets/image/s1-img-1.jpg') }}">
                    </div>
                    <div class="pic pic-2">
                        <img src="{{ asset('assets/image/s1-img-2.jpg') }}">
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- Section 1 Ends --}}

    {{-- Section 2 Starts --}}
    <section class="section_2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="desc">
                        <h3>OUR SERVICES</h3>
                        <h2>Services We Offer</h2>
                        <p>This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the
                            look and feel of finished, typeset text.</p>
                    </div>
                </div>
                <!-- Services Box -->

                <!-- Services Box -->
                <div class="col-md-4">
                    <div class="main">
                        <div class="pic">
                            <a href="{{ route('day-cation') }}">
                                <img src="{{ asset('assets/image/s2-img-1.jpg') }}" alt="">
                            </a>
                        </div>
                        <div class="title">
                            <h4>Daycation</h4>
                        </div>
                        <div class="desc-2">
                            <p>This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate
                                the look.</p>
                        </div>
                        <div class="more">
                            <a href="{{ route('day-cation') }}">Read More</a>
                        </div>
                    </div>
                </div>
                <!-- Services Box -->
                <div class="col-md-4">
                    <div class="main">
                        <div class="pic">
                            <a href="{{ route('cat-cation') }}">
                                <img src="{{ asset('assets/image/s2-img-2.jpg') }}" alt="">
                            </a>
                        </div>
                        <div class="title">
                            <h4>Catcation</h4>
                        </div>
                        <div class="desc-2">
                            <p>This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate
                                the look.</p>
                        </div>
                        <div class="more">
                            <a href="{{ route('cat-cation') }}">Read More</a>
                        </div>
                    </div>
                </div>
                <!-- Services Box -->
                <div class="col-md-4">
                    <div class="main">
                        <div class="pic">
                            <a href="{{ route('stay-cation') }}">
                                <img src="{{ asset('assets/image/s2-img-3.jpg') }}" alt="">
                            </a>
                        </div>
                        <div class="title">
                            <h4>Staycation</h4>
                        </div>
                        <div class="desc-2">
                            <p>This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate
                                the look.</p>
                        </div>
                        <div class="more">
                            <a href="{{ route('stay-cation') }}">Read More</a>
                        </div>
                    </div>
                </div>
                <!-- Services Box -->
                <div class="col-md-4">
                    <div class="main">
                        <div class="pic">
                            <a href="{{ route('drop-and-visit') }}">
                                <img src="{{ asset('assets/image/s2-img-4.jpg') }}" alt="">
                            </a>
                        </div>
                        <div class="title">
                            <h4>Drop n Visit</h4>
                        </div>
                        <div class="desc-2">
                            <p>This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate
                                the look.</p>
                        </div>
                        <div class="more">
                            <a href="{{ route('drop-and-visit') }}">Read More</a>
                        </div>
                    </div>
                </div>
                <!-- Services Box -->
                <div class="col-md-4">
                    <div class="main">
                        <div class="pic">
                            <a href="{{ route('house-sitting') }}">
                                <img src="{{ asset('assets/image/s2-img-5.jpg') }}" alt="">
                            </a>
                        </div>
                        <div class="title">
                            <h4>House Sitting</h4>
                        </div>
                        <div class="desc-2">
                            <p>This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate
                                the look.</p>
                        </div>
                        <div class="more">
                            <a href="{{ route('house-sitting') }}">Read More</a>
                        </div>
                    </div>
                </div>
                <!-- Services Box -->
                <div class="col-md-4">
                    <div class="main">
                        <div class="pic">
                            <a href="{{ route('dog-cation') }}">
                                <img src="{{ asset('assets/image/s2-img-6.jpg') }}" alt="">
                            </a>
                        </div>
                        <div class="title">
                            <h4>Dogcation</h4>
                        </div>
                        <div class="desc-2">
                            <p>This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate
                                the look.</p>
                        </div>
                        <div class="more">
                            <a href="{{ route('dog-cation') }}">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- Section 2 Ends --}}

    {{-- Section 3 Starts --}}
    <section class="section_3" style="background-image: url(assets/image/s3-bg.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="desc">
                        <h2>Where pets feel loved and cherished, even when you're away!</h2>
                    </div>
                    <div class="more">
                        <ul>
                            <li>
                                <a href="{{ route('ad.lists') }}">Find A Job</a>
                            </li>
                            <li>
                                <a href="{{ route('ad.create') }}">Post An Ad</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="ab-pic">
            <img src="{{ asset('assets/image/s3-img.png') }}">
        </div>
    </section>
    {{-- Section 3 Ends --}}

    {{-- Section 4 Starts --}}
    <section class="section_4">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="pic">
                        <img src="{{ asset('assets/image/s5-img.jpg') }}">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="desc">
                        <h3>WHY CHOOSE US</h3>
                        <h2>Our Goal is to Wow With Every Solution</h2>
                        <p>This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the
                            look and feel of finished, typeset text. </p>
                        <ul class="list">
                            <li> <i class="far fa-check-circle"></i>
                                <h4>Customer Focused Reviews</h4>
                                <span> This is dummy copy. It is not meant to be read. It has been placed here solely to
                                    demonstrate the look.</span>
                            </li>
                            <li> <i class="far fa-check-circle"></i>
                                <h4>We Are Committed</h4>
                                <span>This is dummy copy. It is not meant to be read. It has been placed here solely to
                                    demonstrate the look.</span>
                            </li>
                            <li> <i class="far fa-check-circle"></i>
                                <h4>Dedicated Team</h4>
                                <span> This is dummy copy. It is not meant to be read. It has been placed here solely to
                                    demonstrate the look.</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- Section 4 Ends --}}

    {{-- Section 5 Starts --}}
    <section class="section_5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="headline">
                        <h2>Testimonials</h2>
                    </div>
                    <div class="testimonial-slider">
                        <div class="loop">
                            <div class="main">
                                <div class="desc">
                                    <p>
                                        I just wanted to mention how great Pet Lodger is! They provide you with excellent
                                        sitters and reply very quickly. We frequently recommend them to our friends because
                                        we've utilized them for our recent pet sitters. Excellent service!
                                    </p>
                                </div>
                                {{-- <div class="pic">
                           <img src="{{asset('assets/image/s6-img.png')}}" alt="">
                        </div>
                        <div class="title">
                           <h4>John Smith</h4>
                        </div>
                        <div class="sub-title">
                           <h5>Manager</h5>
                        </div> --}}
                            </div>
                        </div>
                        <div class="loop">
                            <div class="main">
                                <div class="desc">
                                    <p>
                                        This is the greatest website for locating trustworthy pet care providers. Their
                                        customer service is exceptional, and they stand out for their quick and efficient
                                        feedback. Every sit we've scheduled using their platform has been enjoyable.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="loop">
                            <div class="main">
                                <div class="desc">
                                    <p>
                                        We're trying pet sitting for the first time, and I must admit that the website of
                                        this pet sitting service helped us swiftly get over any concerns we had. Connecting
                                        with sitters is a breeze thanks to its easy navigation and understanding. For us,
                                        it's been really beneficial. Many thanks.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="loop">
                            <div class="main">
                                <div class="desc">
                                    <p>
                                        They have had excellent communication from the moment I contacted them. Quick,
                                        amiable, and constantly supportive! Our pet family members have been in the best
                                        hands with them multiple times. Knowing that they're receiving the care and
                                        attention they require while we're away is a big relief.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- Section 5 Ends --}}
@endsection
