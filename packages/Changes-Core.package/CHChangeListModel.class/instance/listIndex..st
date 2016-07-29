accessing
listIndex: anInteger

	listIndex := anInteger.
	anInteger ~~ 0 ifTrue: [listIndex := self indexMap at: anInteger.].
	self changed: #listIndex