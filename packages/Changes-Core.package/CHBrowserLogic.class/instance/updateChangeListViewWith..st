updating
updateChangeListViewWith: aChangeList

	self changeList: aChangeList.
	self changeList
		addDependent: self;
		showAllChanges.
	self changesBrowser changed: #changeListList.