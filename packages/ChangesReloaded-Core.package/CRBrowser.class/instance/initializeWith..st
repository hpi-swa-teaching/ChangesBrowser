initialize-release
initializeWith: aMultiByteFileStream

	super initialize.
	self 
		initializeChangeListItemsWith: aMultiByteFileStream;
		groupChangeListItems;
		updateAfterChangeListChange.