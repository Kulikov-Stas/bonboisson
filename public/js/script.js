window.onload = function() {
    // for ios dropdown
    $('body').on('touchstart.dropdown', '.dropdown-menu', function(e) {
        e.stopPropagation();
    });
    // for ios dropdown



    $('.preloader .logoBlue').css({
        "animation": "loaderAnimation 1s forwards",
        "-moz-animation": "loaderAnimation 1s forwards"
    });

    var preloader = $('#preloader');
    var loaderWrapper = $('.loaderWrapper');
    loaderWrapper.delay(1000).fadeOut('slow');
    var timerHideLoader = setTimeout(function() {
        preloader.fadeOut(400);
    }, 1000)






    // function loadPage(html) {
    //     // html contains the html to add to #main-wrapper
    //     // put the html in an element to count the images in it
    //     var el = $("<div>").html(html);
    //     var imgCount = el.find("img").length;
    //     var count = 0;
    //     var percentage = 0;







    //     $("img", el).load(function() {

    //         // console.log(this);



    //         count++;
    //         if (imgCount === count) {

    //             // $('#loderAnim style').text(
    //             //     "#loderAnim:after{height: 100%}"
    //             // );
    //             var preloader = $('#preloader');
    //             var loaderWrapper = $('.loaderWrapper');

    //             loaderWrapper.delay(300).fadeOut('slow');
    //             var timerHideLoader = setTimeout(function() {
    //                 preloader.fadeOut(400);
    //             }, 1000)

    //         } else {
    //             percentage = (count / imgCount) * 100;
    //             if ($(window).width() <= 768) {
    //                 $('#loderAnim style').text(
    //                     "#loderAnim:after{background-color: #022169;}"
    //                 );
    //             }



    //             $('#loderAnim style').text(
    //                 "#loderAnim:after{height:" + percentage + "%}"
    //             );


    //         }
    //     });
    // }
    // loadPage($('html').html());

};





$(document).ready(function() {



    // scroll style





    // scroll style

    // toogle menu start



    $(document).on("click.bs.dropdown.data-api", ".noclose", function(e) { e.stopPropagation() });
    $('.noclose').on('click', function() { $(this).css('background', '#fff') });


    // toogle menu end

    // news ajax start
    $('.more').on('click', function(e) {
        e.preventDefault();
        var that = this;
        var dataSrc = $(that).data('src');
        var elLength;
        var dataCity;





        var dataLang = $(that).data('lang');
        $(this).hide();
        $(this).parent().addClass('loadingButton');


        var data = {};
        if (dataSrc == 'vacancies') {
            elLength = $('.main-block__wrapper .one-vacance-block').length;
            dataCity = $(that).data('city');
            data.city_id = dataCity;
        } else {
            elLength = $('.main-block__wrapper a').length;
        }

        data.offset = elLength;
        data.type = dataSrc;
        data.lang = dataLang


        $.ajax({
            type: "GET",
            url: "/ajax",
            data: data,
            success: function(result) {
                $(that).parent().removeClass('loadingButton');
                $(that).fadeIn();
                if ($(result).length == 0) {

                    $(that).fadeOut();
                } else {

                    $(".main-block__wrapper").append(result);
                }
            }
        });
    });
    // news ajax end





    // bubbles color in product page start

    var imgContainer = $('.productsBubbleBlock');

    for (var i = 0; i < imgContainer.length; i++) {
        var image = $('.productsBubbleBlock').find('img');
        var bubblesContainer = $('.productsBubbleBlock').find('.bubblesContainer');
        var picture = image[i];
        colorRGB(picture, bubblesContainer[i]);

    }

    function colorRGB(image, bubble) {
        RGBaster.colors(picture, {
            // Не учитывать белый цвет
            exclude: ['rgb(255,255,255)', 'rgb(0,0,0)'],
            success: function(payload) {


                $(bubble).find('.bubble').css('background', "linear-gradient(to top," + payload.dominant + ",rgba(255,255,255,0.8)");


            }
        });
    }










    $('.burger, .overlay').click(function() {
        $('.burger').toggleClass('clicked');
        $('.overlay').toggleClass('show');
        $('nav').toggleClass('show');
        $('body').toggleClass('overflow');
    });

    //header background start
    $(window).on('scroll', function() {


        // if ($(window).scrollTop() > $("main").position().top) {
        if ($(window).scrollTop() > 10) {
            $(".main-menu").css('background-color', '#fff');
        } else {
            $(".main-menu").css('background-color', 'transparent');
        }
    });
    //header background end


    //ripples in main page start

    /*if ($('*').is('.main-page-header-slider')) {
        if ($(window).width() > 1310) {

            $('#mainSliderIndicators .active').ripples({
                resolution: 500,
                dropRadius: 20,
                perturbance: 0.04
            });

            $('#mainSliderIndicators').on('slid.bs.carousel', function() {
                $('#mainSliderIndicators .active').ripples({
                    resolution: 500,
                    dropRadius: 20,
                    perturbance: 0.04
                });
                $('#mainSliderIndicators .active').siblings('.carousel-item').ripples('destroy');
            });

            $(window).on('scroll', function() {
                if ($(this).scrollTop() > 400) {
                    $(".topSlider").carousel('pause');
                    $('.carousel-inner .active').ripples('pause');
                    $('.circle').css('background', 'black');
                } else {
                    $('.topSlider').carousel('cycle');
                    $('.carousel-inner .active').ripples('play');
                }
            })
        }
    }*/

    // now optimized

    if ($('*').is('.main-page-header-slider')) {
        if ($(window).width() > 1310) {

            //first case
            /*try {
                $('#mainSliderIndicators .carousel-item.active').ripples({
                    resolution: 300,
                    crossOrigin: 'anonymous',
                    dropRadius: 20,
                    perturbance: 0.04
                });
                console.log('start');
            }
            catch (e) {
                console.log(e);
            }

            $('#mainSliderIndicators').on('slid.bs.carousel', function() {
                $('#mainSliderIndicators .active').siblings('.carousel-item').ripples('destroy');
                console.log('destroy siblings ripples');
                setTimeout(function () {
                        try {
                            $('#mainSliderIndicators .carousel-item.active').ripples({
                                resolution: 300,
                                crossOrigin: 'anonymous',
                                dropRadius: 20,
                                perturbance: 0.04
                            });
                            console.log('play ripples in active slide');
                        }
                        catch (e) {
                            console.log(e);
                        }
                }, 500);
            });*/

            // second case
            try {
                $('#mainSliderIndicators .carousel-item').ripples({
                    resolution: 300,
                    crossOrigin: 'anonymous',
                    dropRadius: 20,
                    perturbance: 0.04
                });
                console.log('start');
            }
            catch (e) {
                console.log(e);
            }

            $('#mainSliderIndicators').on('slid.bs.carousel', function() {
                setTimeout(function () {
                    $('#mainSliderIndicators .carousel-item.active').siblings('.carousel-item').ripples('pause');
                    console.log('pause siblings ripples');
                }, 1000);
                $('#mainSliderIndicators .carousel-item.active').ripples('play');
                console.log('play active ripples');
            });

            $(window).on('scroll', function() {
                if ($(this).scrollTop() > 400) {
                    $(".topSlider").carousel('pause');
                    $('.carousel-inner .active').ripples('pause');
                    $('.circle').css('background', 'black');
                } else {
                    $('.topSlider').carousel('cycle');
                    $('.carousel-inner .active').ripples('play');
                }
            })
        }
    }

    //ripples in main page end




    //ANIMATION START
    var wow = new WOW({
        boxClass: 'wow', // класс, скрывающий элемент до момента отображения на экране (по умолчанию, wow)
        animateClass: 'animated', // класс для анимации элемента (по умолчанию, animated)
        offset: 0, // расстояние в пикселях от нижнего края браузера до верхней границы элемента, необходимое для начала анимации (по умолчанию, 0)
        mobile: false, // включение/отключение WOW.js на мобильных устройствах (по умолчанию, включено)
        live: true, // поддержка асинхронно загруженных элементов (по умолчанию, включена)
    });

    new WOW().init();


    $('.logoWhite').hover(function() {
        $('.logoBlue').css({
            "animation": "loaderAnimation 2s forwards",
            "-moz-animation": "loaderAnimation 2s forwards"
        });

    }, function() {


    })






    $('.imgProducts').on("mouseenter", function() {
        $(this).find('.imgStatic').fadeOut(300);
        var imgAnim = $(this).find(".imgAnim");
        var imgStatic = $(this).find('.imgStatic');
        $(this).find(".imgAnim").css({ "animation": "playh 3s steps(89) forwards", "-webkit-animation": "playh 3s steps(89) forwards" }).fadeIn(100);
        imgAnim.on("animationend", function() {
            imgStatic.fadeIn(0);
            imgAnim.fadeOut(200);

        });
    });



    $('.imgProducts').on("mouseleave", function() {
        var imgAnim = $(this).find(".imgAnim");
        var imgStatic = $(this).find('.imgStatic');
        imgAnim.on("animationend", function() {
            imgStatic.fadeIn(0);
            imgAnim.fadeOut(200);
            // $(this).find('.imgStatic').fadeIn(100);
            // imgAnim.css({"animation-name": "none", "-webkit-animation-name": "none"});
            // imgAnim.css({"animation": "playh 3s steps(89) forwards", "-webkit-animation": "playh 3s steps(89) forwards"}).fadeOut(200);;

        });


    });












    //anim slider-bottom start
    if ($('*').is('.slider-bottom')) {

        $(".section-six").on("animationend",function(){
            $('#sliderBottomIndicators .active').find('.slider-text').animate({ "background-size": "150%" }, 2000);
            $('#sliderBottomIndicators .active').find('.slider-text').animate({ "background-size": "100%" }, 2000);
        });

        $('.slider-bottom .active').find('.slider-text').animate({ "background-size": "150%" }, 2000);
        $('.slider-bottom .active').find('.main-block-url-container, .slider-bottom__discription').animate({ "opacity": "1" }, 1500);
        $('#mainSliderIndicators .active').find('.slider-discription').animate({ "opacity": "1" }, 1500);

        $('#sliderBottomIndicators').on('slide.bs.carousel', function() {
            $('#sliderBottomIndicators .active').find('.slider-text').animate({ "background-size": "100%" }, 2000);
            $('#sliderBottomIndicators .active').find('.main-block-url-container, .slider-bottom__discription').animate({ "opacity": "0" }, 1500);

        })

        $('.bottomSlider').on('slid.bs.carousel', function() {
            $('#sliderBottomIndicators .active').find('.slider-text').animate({ "background-size": "150%" }, 2000);
            $('#sliderBottomIndicators .active').find('.main-block-url-container, .slider-bottom__discription').animate({ "opacity": "1" }, 1500);

        })
    }
    //anim slider-bottom end



    // ANIM MAIN SLIDER MAIN PAGE START
    $('#mainSliderIndicators').on('slid.bs.carousel', function() {
        $('#mainSliderIndicators .active').find('.slider-discription').animate({ "opacity": "1" }, 1500);
    })
    $('#mainSliderIndicators').on('slide.bs.carousel', function() {
        $('#mainSliderIndicators .active').find('.slider-discription').animate({ "opacity": "0" }, 1500);
    })
    //anim hide text in main page start
    $('.backgrocol').hover(function() {
        $(this).find('.hideDiscriptionText').animate({ opacity: 1 }, 1500);
    }, function() {
        $(this).find('.hideDiscriptionText').animate({ opacity: 0 }, 500);
    });
    //anim hide text in main page end


    // ANIM MAIN SLIDER MAIN PAGE END





    // anim about company title start
    if ($('*').is('.aboutCompanyAnimClass')) {
        $('.aboutCompanyAnimClass').hover(function() {
            $(this).animate({ "background-size": "150%" }, 1500);
        }, function() {
            $(this).animate({ "background-size": "100%" }, 1);
        });
    }
    // anim about company title end

    if ($('*').is('#main')) {

         var masonryBlock = $('.grid-itemMain');
         for(var i = 0; i < masonryBlock.length; i++ ){
            $(masonryBlock[i]).attr("data-number", i);
         }

        if ($(window).width() < 1310 && $(window).width() > 640) {

            $(masonryBlock[0]).attr("data-number", 1);
            $(masonryBlock[1]).attr("data-number", 0);
            $(masonryBlock[6]).attr("data-number", 7);
            $(masonryBlock[7]).attr("data-number", 6);
            
           

            $('.grid').isotope({
                itemSelector: '.grid-itemMain',
                masonry: {
                    // columnWidth: 320
                },
                getSortData: {
                    number: '[data-number]'
                },
                // sort by color then number
                sortBy: ['number']
            });

        };


        if ($(window).width() <= 640) {
            $(masonryBlock[0]).attr("data-number", 1);
            $(masonryBlock[1]).attr("data-number", 0);
            $(masonryBlock[2]).attr("data-number", 3);
            $(masonryBlock[3]).attr("data-number", 2);
            $('.grid').isotope({
            itemSelector: '.grid-itemMain',
            masonry: {
                // columnWidth: 320
            },
            getSortData: {
                number: '[data-number]'
            },
            // sort by color then number
            sortBy: ['number']
        });
        }


        $('.grid').isotope({
            itemSelector: '.grid-itemMain',
            masonry: {
                // columnWidth: 320
            },
            getSortData: {
                number: '[data-number]'
            },
            // sort by color then number
            sortBy: ['number']
        });

        

    }




    if ($('*').is('.phylosophyMasonry')) {
        if ($(window).width() <= 400) {
            $('.main-block').css('width', '100%');
        }


        var philosofyBlockW2 = $('.grid-itemPhilosophy_w2');

        for( var i = 0; i < philosofyBlockW2.length; i++ ){
            if($(philosofyBlockW2[i]).children('img').length > 0) {
                
            }else{
                
                $(philosofyBlockW2[i]).removeClass("grid-itemPhilosophy_w2"); 
                $(philosofyBlockW2[i]).addClass("grid-itemPhilosophy_w2-text"); 
            }

        }






        var masonryBlock = $('.grid-itemPhilosophy');
         for(var i = 0; i < masonryBlock.length; i++ ){
            $(masonryBlock[i]).attr("data-number", i);
         }




        if ($(window).width() < 1640 && $(window).width() > 767) {
            $(masonryBlock[2]).attr("data-number", 3);
            $(masonryBlock[3]).attr("data-number", 2);
            $(masonryBlock[8]).attr("data-number", 9);
            $(masonryBlock[9]).attr("data-number", 8);
            $('.grid').isotope({
                itemSelector: '.grid-itemPhilosophy',
                masonry: {
                    // columnWidth: 320
                },
                getSortData: {
                    number: '[data-number]'
                },
                // sort by color then number
                sortBy: ['number']
            });

        };





        if ($(window).width() <= 767) {
            // $(masonryBlock[2]).attr("data-number", 2);
            // $(masonryBlock[3]).attr("data-number", 3);
            // $(masonryBlock[8]).attr("data-number", 9);
            // $(masonryBlock[9]).attr("data-number", 8);
            $(masonryBlock[0]).attr("data-number", 1);
            $(masonryBlock[1]).attr("data-number", 0);
            $(masonryBlock[2]).attr("data-number", 3);
            $(masonryBlock[3]).attr("data-number", 2);
            $(masonryBlock[5]).attr("data-number", 5);
            $(masonryBlock[6]).attr("data-number", 4);
            $(masonryBlock[8]).attr("data-number", 8);
            $(masonryBlock[9]).attr("data-number", 7);
            $('.grid').isotope({
                itemSelector: '.grid-itemPhilosophy',
                masonry: {
                    // columnWidth: 320
                },
                getSortData: {
                    number: '[data-number]'
                },
                // sort by color then number
                sortBy: ['number']
            });

        }

        // if ($(window).width() <= 768) {
        //     $(masonryBlock[0]).attr("data-number",0 );
        //     $(masonryBlock[1]).attr("data-number", 1);
        //     $('.grid').isotope({
        //         itemSelector: '.grid-itemPhilosophy',
        //         masonry: {
        //             // columnWidth: 320
        //         },
        //         getSortData: {
        //             number: '[data-number]'
        //         },
        //         // sort by color then number
        //         sortBy: ['number']
        //     });

        // }

    
        $('.grid').isotope({
            itemSelector: '.grid-itemPhilosophy',
            masonry: {
                // columnWidth: 320
            },
            getSortData: {
                number: '[data-number]'
            },
            // sort by color then number
            sortBy: ['number']
        });

    }



    //ANIMATION END


    $('.numLeft').parent().css('padding-left', '0');



    //vacancies start
    $('.city-item').on('click', function(e) {

        // var text = $(this).find('a').text();
        // $('.vacancies__title h2').text(text);
        // $(this).find('a').addClass('sidebar-active-item');
        // $(this).siblings().find('a').removeClass('sidebar-active-item');
    });

    if (window.location.href.indexOf('mineral-naya-voda') > 0 ||
        window.location.href.indexOf('bezalkogol-nye-napitki') > 0) { // open sidebar menu
        //console.log('open');
        $('div.sidebar-wrapper > div > div > ul > li:nth-child(3) > a').trigger('click');
    }

    $('.vacancies__title').on('click', function() {
        if ($('.vacancies__city-block').css('display') == 'none') {
            $('.vacancies__city-block').show(400);
            $('.openImg').css('transform', 'rotate(0deg)');
        } else {
            $('.vacancies__city-block').hide(400);
            $('.openImg').css('transform', 'rotate(180deg)');
        }
    });
    //vacancies end


    //Contacts start
    // Contacts form start
    //add file button start
    var button = $('#addFile');
    var form = $('#formContacts');
    var phoneNumber = $('#phone');
    button.on("change", function() {
        var text = this.value.substr(-4);
        $('#fileNme').text("Файл " + text + " прикреплен");
    });
    //add file button end


    // valid phone start
    if ($('*').is('.right-col__form') || $('*').is('.hideform')) {

        $('#phone').mask("+38 (999) 999 99 99", { placeholder: " " });
        // valid form start
        // valid form end
    }

    if ($('*').is('form')) {


        var validatorForm = $('#formContacts').validate({
            rules: {
                name: {
                    required: true
                },
                phone: {
                    required: true
                },
                email: {
                    required: true
                }
            },
            messages: {
                name: {
                    required: "Поле 'Имя' обязательно к заполнению",
                },
                phone: {
                    required: "Поле 'Телефон' обязательно к заполнению"
                },
                email: {
                    required: "Поле 'Email' обязательно к заполнению"
                }
            },
            submitHandler: function(form) {
                if (!$("#checkbox").prop("checked")) {
                    $('.errorCheckbox').show();
                } else {
                    $('.errorCheckbox').hide();
                    $(form).ajaxSubmit();
                    validatorForm.resetForm();
                }

            }
        });
    }
    // valid phone end

    $('#formContacts').on('submit', function(e) {
        e.preventDefault();

        return false;

    })

    //show hide block
    $('#showHideBlock').on('click', function(e) {
        e.preventDefault();
        $('#hideBlock').show(600).css('display', 'flex');
        $('.closeBtn').on('click', function() {
            $('#hideBlock').hide();
        })
    })

    if ($('*').is('#showHideForm')) {

        $('#phone').mask("+38 (999) 999 99 99", { placeholder: " " });
        $('#showHideForm').on('click', function(e) {
            e.preventDefault();
            $('.hideform').show(600).css('display', 'flex');
            $('.closeForm').on('click', function() {
                $('.hideform').hide();
            })
        })
    }



    // Contacts form end
    //Contacts end


    //first masonry mainPage end
    $('.products-links').on("click", function(e) {
        $(this).addClass('activeItemProductsMenu');
        $(this).siblings().removeClass('activeItemProductsMenu');
    })



    // OwlCarousel2-2.3.4 start

    if ($('*').is('.owl-carousel')) {

        // $('.next-arrow').on('click', function() {
        //     $(".owl-next").trigger('click');
        // })

        // $('.prev-arrow').on('click', function() {
        //     $(".owl-prev").trigger('click');
        // })

        var fixOwl = function() {
            var $stage = $('.owl-stage'),
                stageW = $stage.width(),
                $el = $('.owl-item'),
                elW = 0;
            $el.each(function() {
                elW += $(this).width() + +($(this).css("margin-right").slice(0, -2))
            });
            if (elW > stageW) {
                $stage.width(elW);
            };
        }

        $('.owl-carousel').owlCarousel({
            margin: 10,
            autoWidth: true,
            items: 4,
            loop: false,
            nav: true,
            navText: ['<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>'],
            onInitialized: fixOwl,
            onRefreshed: fixOwl
        });
    }
    // OwlCarousel2-2.3.4 end


    //Opened products slider mobile start
    // $('.slider-mobile-block__right').on('click', function() {
    //     $(".left").trigger('click');
    // })

    // $('.slider-mobile-block__left').on('click', function() {
    //     $(".right").trigger('click');
    // })
    //Opened products slider mobile end


    // opened prod bottle color start
    /*$('.bottle-ico').on('click', function() {
        if ($(this).hasClass('active-color')) {
            $(this).removeClass('active-color');

        } else {

            $(this).addClass('active-color');

        }
    })*/
    // opened prod bottle color end




    //predstavitelstva block start
    //active icon start
    $('.link-icon').on('click', function() {
        $(this).addClass('active-map-block');

        $(this).siblings().removeClass('active-map-block');
        if ($('.map-block').hasClass('active-map-block')) {
            $('.container-map').fadeIn(500).show();
            $('.container-list').fadeOut(500).hide();
        } else {
            $('.container-map').fadeOut(500).hide();
            $('.container-list').fadeIn(500).show().css('display', 'flex');
            $('.grid').masonry({
                // options
                itemSelector: '.grid-item',
                // columnWidth: 100


            });
        }
    })
    //active icon end

    //marker style start
    $('.leaflet-marker-pane img').on('click', function() {
        $(this).css('opacity', '1');
        $(this).siblings().css('opacity', '0.8');
    });
    //marker style end



    // privacyPolicy start
    if ($('*').is('.popup-content')) {

        $('.popup-content').magnificPopup({
            type: 'inline',
            closeOnBgClick: false,
            closeOnContentClick: false,
            callbacks: {
                beforeOpen: function () {
                    $.magnificPopup.close();
                },
                open: function () {
                    var nice = $(".mfp-content").niceScroll();
                },
            }
        });

        

        // $('.popup-content, #showHideForm').on('click', function(){
        //     var nice = $(".mfp-content").niceScroll();
        // });
        /*$('.simple-ajax-popup').on('mfpOpen', function(e) {
            var nice = $(".mfp-content").niceScroll();
        });*/

    }
    // privacyPolicy end

    $('.simple-ajax-popup').magnificPopup({
        type: 'ajax',
        closeOnBgClick: false,
        closeOnContentClick: false,
        callbacks: {
            ajaxContentAdded: function() {
                var nice = $(".mfp-content").niceScroll();
            },
        }
    });

    /*$('.simple-ajax-popup').on('click', function(e) {
        e.preventDefault();
        $.magnificPopup.close();
    });*/    
});