running
loadFirstChangeFile
	self changesBrowserLogic changesFile: self class mockV1.
	self changesBrowserLogic imageStateListModel
		list: self class mockListV1;
		positions: self class mockPositionsV1;
		endPosition: self class mockEndPositionV1;
		selectedIndex: 1.
	self changesBrowserLogic imageStateListModel browseFile.