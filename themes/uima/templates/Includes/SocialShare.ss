	<ul class="dailyart__social clearfix">
		<li><a href="javascript:window.open('http://www.facebook.com/sharer/sharer.php?u=$AbsoluteLink', '_blank', 'width=400,height=500');void(0);"  title="Share on Facebook"><img src="{$ThemeDir}/images/facebook-circle.png" alt="Share on Facebook"></a>
		</li>
		<li>
			<a href="https://twitter.com/intent/tweet?text=$AbsoluteLink" title="Share on Twitter" target="_blank"><img src="{$ThemeDir}/images/twitter-circle.png" alt="Share on Twitter"></a>
		</li>
		<li>
			<a class="" target="_blank" href="https://pinterest.com/pin/create/button/?url=$AbsoluteLink&media=$DailyArtImage.SetRatioSize(500,500).AbsoluteURL&description=$Title" data-pin-do="buttonPin" data-pin-config="none"><img src="{$ThemeDir}/images/pinterest-circle.png" alt="pin on pinterest"></a>
		</li>
		<li>
			<a href="mailto:?subject=Fwd: $Title&body=$AbsoluteLink"><img src="{$ThemeDir}/images/mail-circle.png" alt="Email this page"></a>
		</li>
	</ul>


