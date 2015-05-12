$(document).ready(function() {

	// add js class to body if javascript enabled
	$('html').removeClass('no-js');

	// Shifter
	$.shifter({
		maxWidth: "767px"
	});

	// Naver
	$(".naver").naver();

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

	//Range


	var range_test = {
		'min': [     1 ],
		'2%': [   1,  99 ],
		'15%' : [100, 150],
		'25%': [  250, 250 ],
		'40%' : [ 500, 500],
		'55%' : [1000, 1500],
		'70%' : [2500, 2500],
		'85%' : [5000, 5000],
		'max': [ 10000 ]
	};

	var range_max = {
		'min': [     1 ],
		'max': [ 10000 ]
	};

	$("#slider-range").noUiSlider({
		range: range_test,
		connect: "lower",
		start: 1,
		format: wNumb({
			decimals: 0
		})

		//snap: true
	})

	$('#slider-range').noUiSlider_pips({
		mode: 'values',
		density: 8,
		values: [1, 100, 250, 500, 1000, 2500, 5000, 10000],
		range: range_test,
		format: wNumb({
			decimals: 0,
			prefix: '$',
			//postfix: '</a>'
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

	/*$('.noUi-origin').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	});*/



	//$("#slider-range").Link('lower').to($("#field"));

});
