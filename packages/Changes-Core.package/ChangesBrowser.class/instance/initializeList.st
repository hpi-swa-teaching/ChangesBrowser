initialization
initializeList
	| model logTuple|
	logTuple := ChangeList browseRecentLog.
	model := VersionListModel new list: logTuple first.
	model positions: (logTuple at: 2).
	model endPosition: (logTuple at: 3).
	model changesFile: (logTuple at: 4).
	self versionListModel: model.
	self ui listView 
		on: model
		list: #list
		selected: #listIndex
		changeSelected: #listIndex:
		menu: #listMenu: 
		keystroke: #arrowKey:from: .
	^ self