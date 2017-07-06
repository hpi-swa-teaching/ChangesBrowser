running
loadEighthChangeFile

	self  changesBrowser changesFile: self class mockV8.
	self changesBrowser imageStateListModel
		list: self class mockListV8;
		positions: self class mockPositionsV8;
		endPosition: self class mockEndPositionV8;
		selectedIndex: 1.
	self changesBrowser imageStateListModel browseFile.