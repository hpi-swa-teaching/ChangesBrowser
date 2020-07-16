accessing
peekFor: aChar

	^ self peek = aChar
		ifTrue: [self next. true]
		ifFalse: [false]
