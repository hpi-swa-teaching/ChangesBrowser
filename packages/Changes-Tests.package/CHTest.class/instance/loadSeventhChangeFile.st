running
loadSeventhChangeFile

	self  changesBrowserLogic changesFile: self class mockV7.
	self changesBrowserLogic imageStateListModel
		list: self class mockListV7;
		positions: self class mockPositionsV7;
		endPosition: self class mockEndPositionV7;
		selectedIndex: 1.
	self changesBrowserLogic imageStateListModel browseFile.