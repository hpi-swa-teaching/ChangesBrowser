button actions
searchButtonText
self deprecated: 'now in CHBrowserLogic'.
	self changesBrowserLogic searchEnabled
		ifTrue: [^'Reset Search']
		ifFalse: [^'Search image states']