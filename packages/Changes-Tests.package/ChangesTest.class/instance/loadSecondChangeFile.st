running
loadSecondChangeFile

	self changesBrowser changesFile: self class mockV2.
	self changesBrowser versionListModel
		list: self class standardMockList;
		positions: self class mockPositionsV2;
		endPosition: self class mockEndPositionV2;
		selectedIndex: 1.
	self changesBrowser browseCurrentlySelectedChangeFile