running
setUp
	super setUp.
	dummyClass := ChangesDummyClass new.
	self changesBrowser: ChangesBrowser new.
	self changesBrowser versionListModel
		list: self standardMockList;
		changesFile: self standardMockChangesFile;
		positions: self standardMockPositions;
		endPosition: self standardMockEndPosition.
	self changesBrowser browseCurrentlySelectedChangeFile.