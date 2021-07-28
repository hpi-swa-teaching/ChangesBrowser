initialize-release
initializeWith: aMultiByteFileStream

	super initialize.
	self
		changesFileStream: aMultiByteFileStream;
		prepareChanges.