as yet unclassified
searchImageStates

	| searchString |
	searchString := UIManager default request: 'enter a string to search for'.
	searchString
		ifNotEmpty: [self loadImageStatesContaining: searchString]