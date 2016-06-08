running
loadFirstChangeFile

	self changesBrowser versionListModel
		list: self class standardMockList;
		changesFile: self class standardMockChangesFileV1;
		positions: self class standardMockPositions;
		endPosition: self class standardMockEndPosition.
	self changesBrowser browseCurrentlySelectedChangeFile