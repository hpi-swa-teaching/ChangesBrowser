buttonActions
searchButtonClicked

	self searchEnabled
		ifTrue: [self resetSearch]
		ifFalse: [self searchImageStates]