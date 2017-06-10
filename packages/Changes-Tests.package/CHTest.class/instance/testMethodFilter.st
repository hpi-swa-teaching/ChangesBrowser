testing
testMethodFilter
	
	self loadSixthChangeFile.
	self changesBrowser changesBrowserLogic  toggleShowDoItChanges.
	self changesBrowser changesBrowserLogic  toggleShowClassCommentChanges .
	self assert: (self changesBrowser changeListList size) equals: (self changesBrowser changeListList count: [:str | str includesSubString: 'method']).