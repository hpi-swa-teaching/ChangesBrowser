updating
updateCodePane

	self hasValidChangeListSelectionIndex
		ifFalse: [self contents: '']
		ifTrue: [self contents: self selectedChangeListItem string].
	self contentsChanged