button-actions
chooseVersionsInGroup

	self hasSelectedGroup ifFalse: [^ self].
	self hasSelectedChangeListItem
		ifTrue: [self pickUntilSelected]
		ifFalse: [self unpickAllInGroup].
	self changedPickStatus