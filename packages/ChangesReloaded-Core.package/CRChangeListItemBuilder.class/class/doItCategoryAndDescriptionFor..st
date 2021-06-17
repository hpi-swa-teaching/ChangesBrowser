describing
doItCategoryAndDescriptionFor: aChangeListItem 
	
	self changeString: aChangeListItem string.
	self categoryRegexDescriptionList
		do: [:triple | self
				if: triple second asRegex
				matchesChangeString: [:matcher | ^ {triple first. triple third value: matcher}]].
			
	"otherwise it's non persistent doits"
	^ {#nonPersistentDoIt. aChangeListItem string}