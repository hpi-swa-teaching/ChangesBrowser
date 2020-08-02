testing-functionality
testSelectedChangeListItemWhenNothingSelected
	
	self changesBrowser changeListSelectionIndex: 0.
	self assert: (self changesBrowser selectedChangeListItem isNil)