as yet unclassified
updateChangeListViewWith: aChangeList

	self changeList: aChangeList.
	aChangeList addDependent: self.
	self ui changesListView 
		on: self changeList
		list: #list
		primarySelection: #listIndex 
		changePrimarySelection: #listIndex:
		listSelection: #listSelectionAt:
		changeListSelection: #listSelectionAt:put:
		menu: #listMenu: 
		keystroke: #arrowKey:from: .