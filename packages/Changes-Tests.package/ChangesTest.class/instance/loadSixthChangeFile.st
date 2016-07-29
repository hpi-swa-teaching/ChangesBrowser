running
loadSixthChangeFile

	self changesBrowser changesBrowserLogic changesFile: self class mockV6.
	self changesBrowser changesBrowserLogic imageStateListModel
		list: self class standardMockList;
		positions: self class mockPositionsV1;
		endPosition: self class mockEndPositionV6;
		selectedIndex: 1.
	self changesBrowser changesBrowserLogic browseCurrentlySelectedChangeFile