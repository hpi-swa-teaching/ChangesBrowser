as yet unclassified
testResetSearch
	self changesBrowserLogic resetSearch.
	self assert: false equals: (changesBrowserLogic searchEnabled).