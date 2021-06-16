accessing
indexOfSelectedChangeListItem

	self versionIndex isZero
		ifTrue: [^ self selectedGroup]
		ifFalse: [^ (self changeGroups at: self selectedGroup) at: self versionIndex]