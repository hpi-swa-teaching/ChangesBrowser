initialize-release
initializeWith: aMultiByteFileStream

	super initialize.
	self
		initializeChangeListItemsWith: aMultiByteFileStream;
		changeListSelectionIndex: 0