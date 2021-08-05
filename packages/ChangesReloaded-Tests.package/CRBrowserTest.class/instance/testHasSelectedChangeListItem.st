testing-functionality
testHasSelectedChangeListItem
	
	self selectFirstChangeListItem.
	self assert: self changesBrowser hasSelectedChangeListItem.
	
	self changesBrowser groupIndex: 0.
	self deny: self changesBrowser hasSelectedChangeListItem.