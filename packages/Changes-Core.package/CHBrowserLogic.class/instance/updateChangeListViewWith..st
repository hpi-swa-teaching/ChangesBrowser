updating
updateChangeListViewWith: aChangeList

	self changeList: aChangeList.
	self changeList addDependent: self.
	self changeList buildNewDisplayList.
	self changesBrowser changed: #changeListList.