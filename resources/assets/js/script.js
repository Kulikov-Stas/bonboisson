$(function() {


    $('.products-links').on("click", function() {
        $(this).addClass('activeItemProductsMenu');
        $(this).siblings().removeClass('activeItemProductsMenu');
    })
    $('.dropdown-item').on("click", function() {
        var text = $(this).text();
        $('.dropdown-toggle').text(text);
    })


    // OwlCarousel2-2.3.4 start
    $('.next-arrow').on('click', function() {
        $(".owl-next").trigger('click');
    })

    $('.prev-arrow').on('click', function() {
        $(".owl-prev").trigger('click');
    })

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
        loop: true,
        nav: true,
        navText: ['<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>'],
        onInitialized: fixOwl,
        onRefreshed: fixOwl
    });
    // OwlCarousel2-2.3.4 end
    //Opened products slider mobile start
    $('.slider-mobile-block__right').on('click', function() {
        $(".left").trigger('click');
    })

    $('.slider-mobile-block__left').on('click', function() {
        $(".right").trigger('click');
    })
    //Opened products slider mobile end
});