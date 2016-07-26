updating
updateChangeListViewWith: aChangeList

	self changeList: aChangeList.
	self changeList
		addDependent: self;
		buildNewDisplayList.
	self changesBrowser changed: #changeListList.