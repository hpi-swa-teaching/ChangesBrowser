running
loadFirstChangeFile
	self changesBrowser changesBrowserLogic changesFile: self class mockV1.
	self changesBrowser imageStateListModel
		list: self class mockListV1;
		positions: self class mockPositionsV1;
		endPosition: self class mockEndPositionV1;
		selectedIndex: 1.
	self changesBrowser browseCurrentlySelectedChangeFile