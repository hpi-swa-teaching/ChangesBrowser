updating
updateChangeListViewWith: aChangeList
	self changeList: aChangeList.
	self changeList
		addDependent: self;
		showAllChanges.
	self changesBrowser changed: #changeListContent.
	self changed: #changeSelected.
	self applyFilter.
	

