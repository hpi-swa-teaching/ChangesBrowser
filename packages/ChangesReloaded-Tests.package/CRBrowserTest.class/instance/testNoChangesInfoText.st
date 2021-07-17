testing-functionality
testNoChangesInfoText
	
	self changesBrowser changeListItems removeAll.
	self changesBrowser updateAfterChangeListChange.
	
	self assert: self changesBrowser noChangesInfoString
		equals: self changesBrowser contents.