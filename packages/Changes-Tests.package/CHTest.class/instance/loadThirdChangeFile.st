running
loadThirdChangeFile

	self changesBrowserLogic changesFile: self class mockV3.
	self changesBrowserLogic imageStateListModel
		list: self class mockListV3;
		positions: self class mockPositionsV3;
		endPosition: self class mockEndPositionV3;
		selectedIndex: 1.
	self changesBrowserLogic imageStateListModel browseFile.