initializing
initializeWith: aMultiByteFileStream

	self initializeHistoryListWith: aMultiByteFileStream.
	self historyListSelectionIndex: 0.
	self changeListSelectionIndex: 0