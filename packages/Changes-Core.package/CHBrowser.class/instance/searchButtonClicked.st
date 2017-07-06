as yet unclassified
searchButtonClicked

	self searchEnabled
		ifTrue: [self resetSearch]
		ifFalse: [self searchImageStates]