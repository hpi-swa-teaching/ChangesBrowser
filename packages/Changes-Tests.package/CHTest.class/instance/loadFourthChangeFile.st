running
loadFourthChangeFile

	self changesBrowser changesBrowserLogic changesFile: self class mockV4.
	self changesBrowser imageStateListModel
		list: self class mockListV4;
		positions: self class mockPositionsV4;
		endPosition: self class mockEndPositionV4;
		selectedIndex: 3.
	self changesBrowser browseCurrentlySelectedChangeFile