running
loadEighthChangeFile

	self  changesBrowserLogic changesFile: self class mockV8.
	self changesBrowserLogic imageStateListModel
		list: self class mockListV8;
		positions: self class mockPositionsV8;
		endPosition: self class mockEndPositionV8;
		selectedIndex: 1.
	self changesBrowserLogic imageStateListModel browseFile.