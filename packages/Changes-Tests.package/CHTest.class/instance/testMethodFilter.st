testing
testMethodFilter
	
	self loadSixthChangeFile.
	self changesBrowser changesBrowserLogic  toggleShowDoItChanges.
	self changesBrowser changesBrowserLogic  toggleShowClassCommentChanges .
	self assert: (self changesBrowser changesBrowserLogic  changeListContent size) equals: (self changesBrowser changesBrowserLogic changeListContent count: [:str | str includesSubString: 'method']).