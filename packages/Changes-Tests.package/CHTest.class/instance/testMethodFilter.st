testing
testMethodFilter
	
	self loadSixthChangeFile.
	self changesBrowser changesBrowserLogic changeList toggleShowDoItChanges.
	self changesBrowser changesBrowserLogic changeList toggleShowClassCommentChanges .
	self assert: (self changesBrowser changeListList size) equals: (self changesBrowser changeListList count: [:str | str includesSubString: 'method']).