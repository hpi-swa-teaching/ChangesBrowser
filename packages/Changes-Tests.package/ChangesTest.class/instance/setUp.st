running
setUp
	super setUp.
	dummyClass := ChangesDummyClass new.
	self changesBrowser: ChangesBrowser new.
	self changesBrowser versionListModel
		list: self class standardMockList;
		changesFile: self class standardMockChangesFile;
		positions: self class standardMockPositions;
		endPosition: self class standardMockEndPosition.
	self changesBrowser browseCurrentlySelectedChangeFile.