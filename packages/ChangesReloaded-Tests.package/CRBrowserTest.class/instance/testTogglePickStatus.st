testing-functionality
testTogglePickStatus

	self changesBrowser changeListSelectionIndex: 2.
	self changesBrowser togglePickStatusOfSelectedChangeListItem.
	self assert: (self changesBrowser changeListItems second isPicked).
	
	self changesBrowser changeListSelectionIndex: 2.
	self changesBrowser togglePickStatusOfSelectedChangeListItem.
	self assert: (self changesBrowser changeListItems second isPicked not)