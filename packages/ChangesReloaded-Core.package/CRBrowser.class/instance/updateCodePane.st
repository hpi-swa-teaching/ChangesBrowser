updating
updateCodePane

	self hasSelectedChangeListItem
		ifFalse: [self contents: '']
		ifTrue: [self contents: (self diffFromPriorSourceFor: self selectedChangeListItem string)].
	self contentsChanged