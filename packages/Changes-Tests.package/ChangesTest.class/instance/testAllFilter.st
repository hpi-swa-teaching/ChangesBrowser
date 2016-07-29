testing
testAllFilter
	| listSize |
	self loadSixthChangeFile.
	listSize := self changesBrowser changeListList size.
	self changesBrowser changesBrowserLogic changeList hideDoItChanges.
	self deny: (listSize = (self changesBrowser changeListList size)).
	self changesBrowser changesBrowserLogic changeList showAllChanges.
	self assert: listSize = (self changesBrowser changeListList size).