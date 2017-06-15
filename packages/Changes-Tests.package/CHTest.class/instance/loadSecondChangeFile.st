running
loadSecondChangeFile

	self changesBrowserLogic changesFile: self class mockV2.
	self changesBrowserLogic imageStateListModel
		list: self class mockListV2;
		positions: self class mockPositionsV2;
		endPosition: self class mockEndPositionV2;
		selectedIndex: 1.
	self changesBrowserLogic imageStateListModel browseFile.