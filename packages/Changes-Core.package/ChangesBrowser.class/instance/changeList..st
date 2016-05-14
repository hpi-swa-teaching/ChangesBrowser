accessing
changeList: aChangeList

	changeList := aChangeList.
	aChangeList addDependent: self.
	self ui changesListView 
		on: self changeList
		list: #list
		selected: #listIndex
		changeSelected: #listIndex:
		menu: #listMenu: 
		keystroke: #arrowKey:from: .