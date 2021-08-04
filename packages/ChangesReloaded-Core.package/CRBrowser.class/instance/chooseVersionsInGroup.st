button-actions
chooseVersionsInGroup

	self hasSelectedGroup ifFalse: [^ self].
	self hasSelectedChangeListItem
		ifTrue: [self selectedGroup pickUntil: self versionIndex]
		ifFalse: [self selectedGroup unpickAll].
	self changedPickStatus