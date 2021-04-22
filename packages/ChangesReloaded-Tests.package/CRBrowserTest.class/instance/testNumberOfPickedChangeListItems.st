testing-functionality
testNumberOfPickedChangeListItems

	self assert: (self changesBrowser numberOfPickedChangeListItems = 0).
	
	self changesBrowser changeListItems first pick.
	self changesBrowser changeListItems fifth pick.
	self assert: (self changesBrowser numberOfPickedChangeListItems = 2)