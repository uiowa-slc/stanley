$(document).ready(function() {

	// add js class to body if javascript enabled
	$('html').removeClass('no-js');

	// Shifter
	$.shifter({
		maxWidth: "767px"
	});

	// Naver
	$(".naver").naver();

	// Home Carousel
	$('.homecarousel').slick({
		dots: true,
		infinite: true,
		speed: 1000,
		fade: true,
		cssEase: 'linear',
		pauseOnHover: false,
		autoplay: true,
		autoplaySpeed: 5500
	});

});
