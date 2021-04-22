testing-functionality
testSelectedChangeListItem
	
	self changesBrowser changeListSelectionIndex: 2.
	self assert: (self changesBrowser selectedChangeListItem == self changesBrowser changeListItems second).	
	self changesBrowser changeListSelectionIndex: 4.
	self assert: (self changesBrowser selectedChangeListItem == self changesBrowser changeListItems fourth)