testing-functionality
testNumberOfPickedChangeListItems

	self assert: 0 equals: self changesBrowser numberOfPickedChangeListItems.

	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self selectSecondChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self assert: 2 equals: self changesBrowser numberOfPickedChangeListItems.