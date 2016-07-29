running
loadFifthChangeFile

	self changesBrowser changesBrowserLogic changesFile: self class mockV5.
	self changesBrowser changesBrowserLogic imageStateListModel
		list: self class standardMockList;
		positions: self class mockPositionsV1;
		endPosition: self class mockEndPositionV5;
		selectedIndex: 1.
	self changesBrowser changesBrowserLogic browseCurrentlySelectedChangeFile