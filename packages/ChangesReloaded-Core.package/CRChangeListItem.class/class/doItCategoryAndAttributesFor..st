categories & attributes
doItCategoryAndAttributesFor: aCRChangeListItem 
	
	self categoryRegexAttributesList
		do: [:triple | self 
				if: triple second asRegex
				matches: aCRChangeListItem string
				do: [:matcher | ^ {triple first. triple third value: matcher}]].
			
	"otherwise it's non persistent doits"
	^ {#nonPersistentDoIt. Dictionary new}