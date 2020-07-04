initialize-release
initializeWith: aMultiByteFileStream

	super initialize.
	self
		initializeHistoryListWith: aMultiByteFileStream;
		historyListSelectionIndex: 0;
		changeListSelectionIndex: 0