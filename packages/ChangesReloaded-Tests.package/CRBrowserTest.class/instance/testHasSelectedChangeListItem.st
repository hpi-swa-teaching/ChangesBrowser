testing-functionality
testHasSelectedChangeListItem
	
	self changesBrowser changeListSelectionIndex: 4.
	self assert: (self changesBrowser hasSelectedChangeListItem = true).
	self changesBrowser changeListSelectionIndex: 0.
	self assert: (self changesBrowser hasSelectedChangeListItem = false)