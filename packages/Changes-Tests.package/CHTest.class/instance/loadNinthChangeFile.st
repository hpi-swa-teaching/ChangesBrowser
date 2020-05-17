running
loadNinthChangeFile

	self changesBrowser changesFile: self class mockV9.
	self changesBrowser imageStateListModel
		list: self class mockListV9;
		positions: self class mockPositionsV2;
		endPosition: self class mockEndPositionV9;
		selectedIndex: 1.
	self changesBrowser imageStateListModel browseFile.