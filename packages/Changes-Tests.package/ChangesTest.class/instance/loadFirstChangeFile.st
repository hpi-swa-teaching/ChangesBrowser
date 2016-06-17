running
loadFirstChangeFile
	
	self changesBrowser changesFile: self class mockV1.
	self changesBrowser versionListModel
		list: self class standardMockList;
		positions: self class standardMockPositions;
		endPosition: self class standardMockEndPosition;
		selectedIndex: 1.
	self changesBrowser browseCurrentlySelectedChangeFile