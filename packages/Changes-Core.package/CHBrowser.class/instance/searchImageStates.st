button actions
searchImageStates

	| searchString |
	self deprecated: 'now in CHBrowserLogic'.
	searchString := UIManager default request: 'enter a string to search for'.
	searchString
		ifNotEmpty: [self changesBrowserLogic loadImageStatesContaining: searchString]