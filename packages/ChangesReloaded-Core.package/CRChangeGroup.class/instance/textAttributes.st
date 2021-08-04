descriptions
textAttributes

	^ self anyPicked
		ifTrue: [OrderedCollection new]
		ifFalse: [CRChangeListItem unpickedAttributes]