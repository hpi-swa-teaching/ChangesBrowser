testing-functionality
testNumberOfPickedChangeListItems

	self assert: (self changesBrowser numberOfPickedChangeListItems = 0).
	
	self changesBrowser changeListItems first isPicked: true.
	self changesBrowser changeListItems fifth isPicked: true.
	self assert: (self changesBrowser numberOfPickedChangeListItems = 2)