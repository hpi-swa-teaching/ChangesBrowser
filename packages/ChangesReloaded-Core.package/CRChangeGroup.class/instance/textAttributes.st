descriptions
textAttributes

	^ self anyPicked
		ifTrue: [CRChangeListItem pickedAttributes]
		ifFalse: [CRChangeListItem unpickedAttributes]