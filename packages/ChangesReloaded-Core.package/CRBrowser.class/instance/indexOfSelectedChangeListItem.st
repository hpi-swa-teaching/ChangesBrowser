accessing
indexOfSelectedChangeListItem

	self versionIndex isZero
		ifTrue: [^ self groupIndex ]
		ifFalse: [^ self versionIndex]