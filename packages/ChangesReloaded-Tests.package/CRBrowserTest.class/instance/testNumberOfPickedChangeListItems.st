testing-functionality
testNumberOfPickedChangeListItems

	self assert: (self changesBrowser numberOfPickedChangeListItems = 0).

	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self selectSecondChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self assert: (self changesBrowser numberOfPickedChangeListItems = 2).