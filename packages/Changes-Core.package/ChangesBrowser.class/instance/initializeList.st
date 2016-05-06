initialization
initializeList
	|banners model|
	banners := ChangeList browseRecentLog.
	model := VersionListModel new list: banners.
	self ui listView 
		on: model
		list: #list
		selected: #listIndex
		changeSelected: #listIndex:
		menu: #listMenu: 
		keystroke: #arrowKey:from: .
	^ self