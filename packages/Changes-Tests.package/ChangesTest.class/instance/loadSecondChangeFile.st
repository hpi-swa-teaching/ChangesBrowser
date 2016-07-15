running
loadSecondChangeFile

	self changesBrowser changesBrowserLogic changesFile: self class mockV2.
	self changesBrowser imageStateListModel
		list: self class mockListV2;
		positions: self class mockPositionsV2;
		endPosition: self class mockEndPositionV2;
		selectedIndex: 1.
	self changesBrowser browseCurrentlySelectedChangeFile