running
loadSeventhChangeFile

	self  changesBrowser changesFile: self class mockV7.
	self changesBrowser imageStateListModel
		list: self class mockListV7;
		positions: self class mockPositionsV7;
		endPosition: self class mockEndPositionV7;
		selectedIndex: 1.
	self changesBrowser imageStateListModel browseFile.