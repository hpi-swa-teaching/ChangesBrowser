button actions
searchImageStates

	| searchString |
	searchString := UIManager default request: 'enter a string to search for'.
	searchString
		ifNotEmpty: [self changesBrowserLogic loadImageStatesContaining: searchString]