initialization
initializeList
	| model logTuple|
	logTuple := ChangeList browseRecentLog.
	model := VersionListModel new list: logTuple first.
	model 
		positions: (logTuple at: 2);
		endPosition: (logTuple at: 3);
		changesFile: (logTuple at: 4);
		changesBrowser: self.
	self versionListModel: model.
	self ui versionListView 
		on: model
		list: #list
		selected: #listIndex
		changeSelected: #listIndex:
		menu: #listMenu: 
		keystroke: #arrowKey:from: .
	^ self