running
loadNinthChangeFile

	self changesBrowserLogic changesFile: self class mockV9.
	self changesBrowserLogic imageStateListModel
		list: self class mockListV9;
		positions: self class mockPositionsV2;
		endPosition: self class mockEndPositionV9;
		selectedIndex: 1.
	self changesBrowserLogic imageStateListModel browseFile.