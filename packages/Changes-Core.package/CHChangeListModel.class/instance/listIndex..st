accessing
listIndex: anInteger
	displayListIndex := anInteger.
	anInteger ~~ 0 ifTrue: [listIndex := self indexMap at: anInteger.].
	self changed: #listIndex.