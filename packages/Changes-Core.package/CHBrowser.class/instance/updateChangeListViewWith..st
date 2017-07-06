as yet unclassified
updateChangeListViewWith: aChangeList
	self changeList: aChangeList.
	self changeList
		addDependent: self;
		showAllChanges.
	self changed: #changeListContent.
	self changed: #changeSelected.
	self applyFilter.
	

