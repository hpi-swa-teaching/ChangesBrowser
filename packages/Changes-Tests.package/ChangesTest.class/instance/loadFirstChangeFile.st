running
loadFirstChangeFile

	self changesBrowser browserLogic changesFile: self class mockV1.
	self changesBrowser versionListModel
		list: self class standardMockList;
		positions: self class mockPositionsV1;
		endPosition: self class mockEndPositionV1;
		selectedIndex: 1.
	self changesBrowser browseCurrentlySelectedChangeFile