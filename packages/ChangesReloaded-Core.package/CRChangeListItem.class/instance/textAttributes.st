descriptions
textAttributes

	^ self isPicked
		ifTrue: [OrderedCollection new]
		ifFalse: [self class unpickedAttributes]