<form class="search-line grid advsea-form" id="[[+advsearch.asId]]_advsea-form" action="[[~[[+advsearch.landing]]]]" method="[[+advsearch.method]]">
    <input type="hidden" name="id" value="[[+advsearch.landing]]" />
    <input type="hidden" name="asId" value="[[+advsearch.asId]]" />
    
	[[+advsearch.liveSearch:isnot=`1`:then=`<button type="submit" class="search-line__btn" id="[[+advsearch.asId]]_advsea-submit" name="sub" value="[[%advsearch.search? &namespace=`advsearch` &topic=`default`]]"><i class="icon-search"></i></button>`:else`=``]]
	[[+advsearch.helpLink]]<input type="text" class="search-line__input" style="width: 100%;" placeholder="Поиск" id="[[+advsearch.asId]]_advsea-search" name="[[+advsearch.searchIndex]]" value="[[+advsearch.searchValue]]">
</form>
[[+advsearch.resultsWindow]]