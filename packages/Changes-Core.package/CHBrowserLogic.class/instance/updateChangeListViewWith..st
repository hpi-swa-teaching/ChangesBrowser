updating
updateChangeListViewWith: aChangeList

	self changeList: aChangeList.
	aChangeList addDependent: self.
	self changed: #changeListList.