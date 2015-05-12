<% if $Photo %>
	<div class="page-photo">
		<picture>
			<!--[if IE 9]><video style="display: none;"><![endif]-->
			<source srcset="$Photo.CroppedFocusedImage(1200,400).URL" media="(min-width: 980px)">
			<source srcset="$Photo.CroppedFocusedImage(980,330).URL" media="(min-width: 768px)">
			<source srcset="$Photo.CroppedFocusedImage(768,300).URL" media="(min-width: 480px)">
			<!--[if IE 9]></video><![endif]-->
			<img srcset="$Photo.CroppedFocusedImage(480,300).URL" alt="$Title">
		</picture>
	</div>
<% end_if %>