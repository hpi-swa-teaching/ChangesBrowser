accessing
max: aChangeListItem

	^ self < aChangeListItem
		ifTrue: [aChangeListItem]
		ifFalse: [self]