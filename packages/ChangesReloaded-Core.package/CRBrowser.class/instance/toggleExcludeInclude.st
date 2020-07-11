building
toggleExcludeInclude

	self selectedChangeListItem isIncluded: (self selectedChangeListItem isIncluded not).
	self
		updateExcludeIncludeButton;
		refreshChangeList;
		repaintChangeListSelection