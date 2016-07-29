testing
testMethodFilter
	
	self loadSixthChangeFile.
	self changesBrowser changesBrowserLogic changeList showMethodChangesOnly.
	self assert: (self changesBrowser changeListList size) equals: (self changesBrowser changeListList count: [:str | str includesSubString: 'method']).