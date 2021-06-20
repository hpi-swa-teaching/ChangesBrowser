describing
doItCategoryAndAttributesFor: aChangeListItem 
	
	self categoryRegexDescriptionList
		do: [:triple | self
				if: triple second asRegex
				matches: aChangeListItem string do: [:matcher | ^ {triple first. triple third value: matcher}]].
			
	"otherwise it's non persistent doits"
	^ {#nonPersistentDoIt. Dictionary new}