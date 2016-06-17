running
loadSecondChangeFile

	self changesBrowser changesFile: self class mockV2.
	self changesBrowser versionListModel
		list: self class standardMockList;
		positions: self class standardMockPositions;
		endPosition: self class standardMockEndPosition;
		selectedIndex: 1.
	self changesBrowser browseCurrentlySelectedChangeFile