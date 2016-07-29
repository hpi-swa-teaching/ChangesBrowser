running
loadThirdChangeFile

	self changesBrowser changesBrowserLogic changesFile: self class mockV3.
	self changesBrowser changesBrowserLogic imageStateListModel
		list: self class mockListV3;
		positions: self class mockPositionsV3;
		endPosition: self class mockEndPositionV3;
		selectedIndex: 1.
	self changesBrowser changesBrowserLogic browseCurrentlySelectedChangeFile