building
updateExcludeIncludeButton

	self selectedChangeListItem isIncluded
		ifTrue: [self setButtonContentToExclude]
		ifFalse: [self setButtonContentToInclude]