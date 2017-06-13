button actions
searchButtonClicked
self deprecated: 'now in CHBrowserLogic'.
	self changesBrowserLogic searchEnabled
		ifTrue: [self resetSearch]
		ifFalse: [self searchImageStates]