updating
updateChangeListViewWith: aChangeList

	aChangeList addDependent: self.
	self changesBrowserLogic changeList: aChangeList.
	self changed: #changeListList