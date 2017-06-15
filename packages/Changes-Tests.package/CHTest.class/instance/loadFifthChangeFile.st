running
loadFifthChangeFile

	self changesBrowserLogic changesFile: self class mockV5.
	self changesBrowserLogic imageStateListModel
		list: self class standardMockList;
		positions: self class mockPositionsV1;
		endPosition: self class mockEndPositionV5;
		selectedIndex: 1.
	self changesBrowserLogic imageStateListModel browseFile.