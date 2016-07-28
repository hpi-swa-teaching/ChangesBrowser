testing
testMethodFilter
	
	self loadSixthChangeFile.
	self changesBrowser showOnlyMethodChanges.
	self assert: (self changesBrowser showingOnlyMethodString) equals: '<yes>methods'.
	self assert: (self changesBrowser changeListList size) equals: ((self changesBrowser changeListList select: [:str | str includesSubString: 'method']) size).