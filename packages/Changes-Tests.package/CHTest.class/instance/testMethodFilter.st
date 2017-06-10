testing
testMethodFilter
	
	self loadSixthChangeFile.
	self changesBrowser changesBrowserLogic  toggleShowDoItChanges.
	self changesBrowser changesBrowserLogic  toggleShowClassCommentChanges .
	self assert: (self changesBrowser changeListContent size) equals: (self changesBrowser changeListContent count: [:str | str includesSubString: 'method']).