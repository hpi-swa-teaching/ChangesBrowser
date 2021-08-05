descriptions
textAttributes

	^ self isPicked
		ifTrue: [CRBrowser pickedAttributes]
		ifFalse: [CRBrowser unpickedAttributes]