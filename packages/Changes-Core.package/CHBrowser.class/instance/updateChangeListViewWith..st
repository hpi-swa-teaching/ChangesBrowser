updating
updateChangeListViewWith: aChangeList

	self browserLogic changeList: aChangeList.
	aChangeList addDependent: self.
	self changed: #changeListList.