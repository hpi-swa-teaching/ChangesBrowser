running
loadFourthChangeFile

	self  changesBrowserLogic changesFile: self class mockV4.
	self changesBrowserLogic imageStateListModel
		list: self class mockListV4;
		positions: self class mockPositionsV4;
		endPosition: self class mockEndPositionV4;
		selectedIndex: 3.
	self changesBrowserLogic imageStateListModel browseFile.