<div class="member-levels" aria-hidden="true">
	<div id="slider-range"></div>
</div>

<div role="tabpanel">
	<!-- Nav tabs -->
	<ul class="nav nav-tabs visuallyhidden" role="tablist" id="myTab">
		<li role="presentation" class="active">
			<a href="#donate-1" data-donate="1" aria-controls="donate-1" role="tab" data-toggle="tab">Under 100 dollars</a>
		</li>
		<li role="presentation">
			<a href="#donate-100" data-donate="100" aria-controls="donate-100" role="tab" data-toggle="tab">100 dollars</a>
		</li>
		<li role="presentation">
			<a href="#donate-250" data-donate="250" aria-controls="donate-250" role="tab" data-toggle="tab">250 dollars</a>
		</li>
		<li role="presentation">
			<a href="#donate-500" data-donate="500" aria-controls="donate-500" role="tab" data-toggle="tab">500 dollars</a>
		</li>
		<li role="presentation">
			<a href="#donate-1000" data-donate="1000" aria-controls="donate-1000" role="tab" data-toggle="tab">1000 dollars</a>
		</li>
		<li role="presentation">
			<a href="#donate-2500" data-donate="2500" aria-controls="donate-2500" role="tab" data-toggle="tab">2500 dollars</a>
		</li>
		<li role="presentation">
			<a href="#donate-5000" data-donate="5000" aria-controls="donate-5000" role="tab" data-toggle="tab">5000 dollars</a>
		</li>
		<li role="presentation">
			<a href="#donate-10000" data-donate="10000" aria-controls="donate-10000" role="tab" data-toggle="tab">10000 dollars</a>
		</li>
		<li role="presentation">
			<a href="#donate-20000" data-donate="20000" aria-controls="donate-20000" role="tab" data-toggle="tab">Gifts of Art</a>
		</li>
		<li role="presentation">
			<a href="#donate-30000" data-donate="30000" aria-controls="donate-30000" role="tab" data-toggle="tab">Deferred Gifts</a>
		</li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
		<% if $Level1Title %>
			<div role="tabpanel" class="tab-pane active" id="donate-1">
				<h2>$Level1Title</h2>
				$Level1
			</div>
		<% end_if %>
		<% if $Level2Title %>
			<div role="tabpanel" class="tab-pane" id="donate-100">
				<h2>$Level2Title</h2>
				$Level2
			</div>
		<% end_if %>
		<% if $Level3Title %>
			<div role="tabpanel" class="tab-pane"  id="donate-250">
				<h2>$Level3Title</h2>
				$Level3
			</div>
		<% end_if %>
		<% if $Level4Title %>
			<div role="tabpanel" class="tab-pane" id="donate-500">
				<h2>$Level4Title</h2>
				$Level4
			</div>
		<% end_if %>
		<% if $Level5Title %>
			<div role="tabpanel" class="tab-pane" id="donate-1000">
				<h2>$Level5Title</h2>
				$Level5
			</div>
		<% end_if %>
		<% if $Level6Title %>
			<div role="tabpanel" class="tab-pane" id="donate-2500">
				<h2>$Level6Title</h2>
				$Level6
			</div>
		<% end_if %>
		<% if $Level7Title %>
			<div role="tabpanel" class="tab-pane" id="donate-5000">
				<h2>$Level7Title</h2>
				$Level7
			</div>
		<% end_if %>
		<% if $Level8Title %>
			<div role="tabpanel" class="tab-pane" id="donate-10000">
				<h2>$Level8Title</h2>
				$Level8
			</div>
		<% end_if %>
		<% if $Level9Title %>
			<div role="tabpanel" class="tab-pane" id="donate-20000">
				<h2>$Level9Title</h2>
				$Level9
			</div>
		<% end_if %>
		<% if $Level10Title %>
			<div role="tabpanel" class="tab-pane" id="donate-30000">
				<h2>$Level10Title</h2>
				$Level10
			</div>
		<% end_if %>
	</div>

</div>