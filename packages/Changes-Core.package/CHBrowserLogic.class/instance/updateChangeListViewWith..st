updating
updateChangeListViewWith: aChangeList

	self changeList: aChangeList.
	self changeList addDependent: self.
	self changesBrowser changed: #changeListList.