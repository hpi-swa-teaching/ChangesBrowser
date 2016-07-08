updating
updateChangeListViewWith: aChangeList

	self changesBrowserLogic changeList: aChangeList.
	aChangeList addDependent: self.
	self changed: #changeListList.