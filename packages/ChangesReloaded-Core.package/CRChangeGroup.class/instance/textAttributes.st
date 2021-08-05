descriptions
textAttributes

	^ self anyPicked
		ifTrue: [CRBrowser pickedAttributes]
		ifFalse: [CRBrowser unpickedAttributes]