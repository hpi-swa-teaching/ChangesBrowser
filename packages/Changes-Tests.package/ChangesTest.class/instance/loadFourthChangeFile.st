running
loadFourthChangeFile

	self changesBrowser browserLogic changesFile: self class mockV4.
	self changesBrowser versionListModel
		list: self class mockListV4;
		positions: self class mockPositionsV4;
		endPosition: self class mockEndPositionV4;
		selectedIndex: 3.
	self changesBrowser browseCurrentlySelectedChangeFile