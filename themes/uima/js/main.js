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

});
