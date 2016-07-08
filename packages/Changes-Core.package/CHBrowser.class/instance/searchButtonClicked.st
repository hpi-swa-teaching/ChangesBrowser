button actions
searchButtonClicked
	self changesBrowserLogic searchEnabled
		ifTrue: [self resetSearch]
		ifFalse: [self openSearchWindow]