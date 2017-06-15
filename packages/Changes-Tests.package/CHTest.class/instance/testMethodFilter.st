testing
testMethodFilter
	
	self loadSixthChangeFile.
	self changesBrowserLogic toggleShowDoItChanges.
	self changesBrowserLogic  toggleShowClassCommentChanges .
	self assert: (self changesBrowserLogic changeListContent size) equals: (self changesBrowserLogic changeListContent count: [:str | str includesSubString: 'method']).