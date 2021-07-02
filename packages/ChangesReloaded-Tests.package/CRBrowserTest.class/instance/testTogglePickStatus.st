testing-functionality
testTogglePickStatus

	self selectFirstChangeListItem.
	self changesBrowser togglePickStatusOfSelectedChangeListItem.
	self assert: (self changesBrowser selectedChangeListItem isPicked).
	
	self selectFirstChangeListItem.
	self changesBrowser togglePickStatusOfSelectedChangeListItem.
	self assert: (self changesBrowser selectedChangeListItem isPicked not)