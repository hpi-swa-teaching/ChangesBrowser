button actions
searchButtonClicked
	self browserLogic searchEnabled
		ifTrue: [self resetSearch]
		ifFalse: [self openSearchWindow]