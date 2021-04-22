updating
updateCodePane

	self hasSelectedChangeListItem
		ifFalse: [self contents: '']
		ifTrue: [self contents: self selectedChangeListItem string].
	self contentsChanged