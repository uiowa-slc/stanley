// http://paulirish.com/2009/markup-based-unobtrusive-comprehensive-dom-ready-execution/
// Modified to only fire on body class (not body class + ID, working off strictly WordPress body_class)

Roots = {
  // all pages
  common: {
    init: function(){


		// add js class to body if javascript enabled
		$('html').removeClass('no-js');

		$('.main-nav').setup_navigation();

		// Shifter
		$.shifter({
			maxWidth: "768px"
		});

		// Naver
		// $(".naver").naver();
		$(".sec-nav").navigation({
			maxWidth: "768px"
		});

		// POPUP WINDOW FOR SOCIAL MEDIA
		function windowPopup(url, width, height) {
			// Calculate the position of the popup so
			// it’s centered on the screen.
			var left = (screen.width / 2) - (width / 2),
				top = (screen.height / 2) - (height / 2);

			window.open(
				url,
				"",
				"menubar=no,toolbar=no,resizable=yes,scrollbars=yes,width=" + width + ",height=" + height + ",top=" + top + ",left=" + left
			);
		}

		// Lightbox
		$(".lightbox").lightbox({
			mobile: true
		});

		// Tooltip
		$(".tooltip").tooltip({
			direction: "top"
		});

		//jQuery
		$(".js-social-share").on("click", function(e) {
			e.preventDefault();
			windowPopup($(this).attr("href"), 500, 300);
		});

		// Vanilla JavaScript
		var jsSocialShares = document.querySelectorAll(".js-social-share");
		if (jsSocialShares) {
			[].forEach.call(jsSocialShares, function(anchor) {
			anchor.addEventListener("click", function(e) {
				e.preventDefault();
				windowPopup(this.href, 500, 300);
			 });
		  });
		}
		// END POPUP WINDOW FOR SOCIAL MEDIA

		//START RANGE SLIDER


		var range_test = {
			'min': [   1 ],
			'1%': [1,  99 ],
			'11%' : [100, 150],
			'22%': [250, 250 ],
			'33%' : [ 500, 500],
			'44%' : [1000, 1500],
			'55%' : [2500, 2500],
			'66%' : [5000, 5000],
			'77%' : [10000, 10000],
			'max': [ 30000 ]
		};


		$("#slider-range").noUiSlider({

			connect: "lower",
			start: 1,
			range: range_test,
			format: wNumb({
				decimals: 0
			})
		})

		$('#slider-range').noUiSlider_pips({
			mode: 'values',
			density: 10,
			values: [1, 100, 250, 500, 1000, 2500, 5000, 10000, 20000, 30000],
			format: wNumb({
				decimals: 0,
				prefix: '$',
				thousand: ','
			})
		});
		$('#myTab a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
		})
		$("#slider-range").on('set', function(){
				// The slider is the scope, so:
				// $(this) == $('#slider')
				val = $(this).val();
				tab = $("#myTab a[data-donate='"+val+"']");
				console.log(tab);
				//alert('wake up');
				$(tab).tab('show');
			}
		);

		$('.noUi-value').click(function (e) {
		  e.preventDefault();
		  var value = $(this).text();

		  value = value.replace('$','');
		  tab = $("#myTab a[data-donate='"+value+"']");


		  $(tab).tab('show');
		  $("#slider-range").val(value);
		});

		$(".noUi-value").filter(function(index, element){
		    return index % 2 == 1;
		}).addClass("odd");

		$(".noUi-handle").append("<a href='support/membership'></a>");
		//END RANGE SLIDER

		// disable right click on images
		$('img').bind('contextmenu', function(e) {
			return false;
		});




    },
    finalize: function(){ }
  },
  // Home page
  DailyArtBlog: {
    init: function(){

		var date = new Date();
		var monthRaw = date.getMonth();
		var dateRaw = date.getDate();
		var month = new Array();

		month[0] = "1";
		month[1] = "2";
		month[2] = "3";
		month[3] = "4";
		month[4] = "5";
		month[5] = "6";
		month[6] = "7";
		month[7] = "8";
		month[8] = "9";
		month[9] = "10";
		month[10] = "11";
		month[11] = "12";
		//console.log('current date = ' +month[monthRaw] + '/' + dateRaw);
		var currentDaySlide = $('.dailyart__day[data-month="' + month[monthRaw] + '"][data-date="' + dateRaw + '"]');
		var daySlider = $('#dailyart__day-slider');

		var currentDayIndex = currentDaySlide.attr('data-pos');

		currentDaySlide.removeAttr('style');
		currentDaySlide.addClass('dailyart__day--active');

		daySlider.flickity({
			initialIndex: currentDayIndex-1,
			pageDots: false,
		}); 
    }
  },
  // Individual post page:
  DailyArtBlogPost: {
    init: function(){

    	var sliderHolder = $('#dailyart__slider-holder');

    	sliderHolder.load('./new-daily-art-blog/slider',function(){
			var daySlider = $('#dailyart__day-slider');

			var postDate = $('#main-content').attr('data-date');
			var postMonth = $('#main-content').attr('data-month');

			var currentDaySlide = $('.dailyart__day[data-month="' + postMonth + '"][data-date="' + postDate + '"]');
			var currentDayIndex = currentDaySlide.attr('data-pos');

			currentDaySlide.removeAttr('style');
			currentDaySlide.addClass('dailyart__day--active');

			daySlider.flickity({
				initialIndex: currentDayIndex-1,
				pageDots: false,
			}); 
    	});
    }
  },
}

UTIL = {
  fire : function(func,funcname, args){
    var namespace = Roots;  // indicate your obj literal namespace here
    funcname = (funcname === undefined) ? 'init' : funcname;
    if (func !== '' && namespace[func] && typeof namespace[func][funcname] == 'function'){
      namespace[func][funcname](args);
    }
  },
  loadEvents : function(){

    // hit up common first.
    UTIL.fire('common');

    // do all the classes too.
    $.each(document.body.className.split(/\s+/),function(i,classnm){
      UTIL.fire(classnm);
    });

    UTIL.fire('common','finalize');
  }
};

// kick it all off here
$(document).ready(UTIL.loadEvents);