running
loadFifthChangeFile

	self changesBrowser browserLogic changesFile: self class mockV5.
	self changesBrowser versionListModel
		list: self class standardMockList;
		positions: self class mockPositionsV1;
		endPosition: self class mockEndPositionV5;
		selectedIndex: 1.
	self changesBrowser browseCurrentlySelectedChangeFile