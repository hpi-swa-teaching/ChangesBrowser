accessing
listIndex: anInteger
	listIndex := anInteger.
	anInteger ~~ 0 ifTrue: [listIndex := self displayedIndexList at: anInteger.].
	self changed: #listIndex.