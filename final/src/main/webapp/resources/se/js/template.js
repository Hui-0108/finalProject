jQuery(function($) {

	/* =============== SHOW / HIDE FORM SEARCH =============== */
	$("header .nino-search, #nino-searchForm .nino-close").click(function(){
		$("#nino-searchForm").toggleClass("open");
	});

	/* =============== SHOW / HIDE GOOGLE MAP =============== */
	$("#nino-map .nino-sectionHeading").click(function(){
		$("#nino-map").toggleClass("showMap");
		$(this).find(".text").toggle();
	});

	/* =============== TESTIMONIAL SLIDER =============== */
	$('.nino-testimonialSlider').unslider({
		nav: false,
		arrows: {
			//  Unslider default behaviour
			prev: '<a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a>',
			next: '<a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a>',
		}
	});

	/* =============== CUSTOM SCROLLBAR STYLE =============== */
	$("#nino-whatWeDo .panel-body").mCustomScrollbar({
		theme:"default"
	});

	/* =============== MAKE MAIN MENU STICKED ON TOP WHEN SCROLL =============== */
	$(window).scroll(function () {
		if ($(this).scrollTop() == $('#nino-header').height() || $(this).scrollTop() > $('#nino-header').height()) {
			$('body').addClass("nino-fixed-nav");
			$('body').css('padding-top', $('#nino-navbar').height() + 'px');
		} else {
			$('body').removeClass("nino-fixed-nav");
			$('body').css('padding-top', 0);
		}
	});
	
	/* =============== ISOTOP =============== */	
	$(window).load(function(){
		$portfolio = $('.nino-portfolioItems');
		$portfolio.isotope({
			itemSelector : 'li',
			layoutMode : 'masonry'
		});
	});
	
	/* =============== PORTFOLIO HOVER EFFECT =============== */
	$('.nino-portfolioItems > li').each( function() { $(this).hoverdir(); } );
	
	/* =============== PERTTYPHOTO =============== */
	$("a.nino-prettyPhoto").prettyPhoto();
	
	/* =============== SMOOTH SCROOL EFFECT =============== */
	$('#nino-navbar ul li a').on('click',function (e) {
	    e.preventDefault();
	    var target = this.hash,
	    $target = $(target);

	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top
	    }, 500, 'swing', function () {
	        window.location.hash = target;
	    });
	});
	
	/* =============== SHOW / HIDE GO TO TOP =============== */
	/* Check to see if the window is top if not then display go top button */
	$(window).scroll(function(){
		if ($(this).scrollTop() > 200) {
			$('#nino-scrollToTop').fadeIn();
		} else {
			$('#nino-scrollToTop').fadeOut();
		}
	});
	/* Click event to scroll to top */
	$('#nino-scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},800);
		return false;
	});
});

$(function(){
	Highcharts.chart('semiPieStatic', {
	    chart: {
	        plotBackgroundColor: null,
	        plotBorderWidth: 0,
	        plotShadow: false,
	        backgroundColor:'transparent'
	    },
	    title: {
	        text: '유기동물현황',
	        align: 'center',
	        verticalAlign: 'middle',
	        y: 60
	    },
	    tooltip: {
	        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	    },
	    accessibility: {
	        point: {
	            valueSuffix: '%'
	        }
	    },
	    plotOptions: {
	        pie: {
	            dataLabels: {
	                enabled: true,
	                distance: -50,
	                style: {
	                    fontWeight: 'bold',
	                    color: 'white'
	                }
	            },
	            startAngle: -90,
	            endAngle: 90,
	            center: ['50%', '75%'],
	            size: '110%'
	        }
	    },
	    series: [{
	        type: 'pie',
	        name: 'Browser share',
	        innerSize: '50%',
	        data: [
	            ['Chrome', 58.9],
	            ['Firefox', 13.29],
	            ['Internet Explorer', 13],
	            ['Edge', 3.78],
	            ['Safari', 3.42],
	            {
	                name: 'Other',
	                y: 7.61,
	                dataLabels: {
	                    enabled: false
	                }
	            }
	        ]
	    }]
	});
	
	Highcharts.chart('regionStatic', {

	    chart: {
	        type: 'column',
	        backgroundColor:'transparent'	
	    },

	    title: {
	        text: '지역별 입양률 및 안락사율 (%)'
	    },

	    xAxis: {
	        categories: ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
	    },

	    yAxis: {
	        allowDecimals: false,
	        min: 0,
	        title: {
	            text: 'Number of fruits'
	        }
	    },

	    tooltip: {
	        formatter: function () {
	            return '<b>' + this.x + '</b><br/>' +
	                this.series.name + ': ' + this.y + '<br/>' +
	                'Total: ' + this.point.stackTotal;
	        }
	    },

	    plotOptions: {
	        column: {
	            stacking: 'normal'
	        }
	    },

	    series: [{
	        name: 'John',
	        data: [5, 3, 4, 7, 2],
	        stack: 'male'
	    }, {
	        name: 'Joe',
	        data: [3, 4, 4, 2, 5],
	        stack: 'male'
	    }, {
	        name: 'Jane',
	        data: [2, 5, 6, 2, 1],
	        stack: 'female'
	    }, {
	        name: 'Janet',
	        data: [3, 0, 4, 4, 3],
	        stack: 'female'
	    }]
	});
});