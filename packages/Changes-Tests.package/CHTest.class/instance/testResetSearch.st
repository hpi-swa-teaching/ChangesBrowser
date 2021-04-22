as yet unclassified
testResetSearch
	self changesBrowser resetSearch.
	self assert: false equals: (self changesBrowser searchEnabled).