accessing
changeList: anObject
	changeList := anObject.
	self ui changesListView 
		on: changeList
		list: #list
		selected: #listIndex
		changeSelected: #listIndex:
		menu: #listMenu: 
		keystroke: #arrowKey:from: .