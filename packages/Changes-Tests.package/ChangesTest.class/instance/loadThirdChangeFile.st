running
loadThirdChangeFile

	self changesBrowser browserLogic changesFile: self class mockV3.
	self changesBrowser versionListModel
		list: self class mockListV3;
		positions: self class mockPositionsV3;
		endPosition: self class mockEndPositionV3;
		selectedIndex: 1.
	self changesBrowser browseCurrentlySelectedChangeFile