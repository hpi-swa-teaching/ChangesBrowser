testing
testMethodFilter
	
	self loadSixthChangeFile.
	self changesBrowser toggleShowDoItChanges.
	self changesBrowser  toggleShowClassCommentChanges .
	self assert: (self changesBrowser changeListContent size) equals: (self changesBrowser changeListContent count: [:str | str includesSubString: 'method']).