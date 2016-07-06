updating
update: aValue

	aValue == #listIndex ifTrue: [self contents: self browserLogic changeList contentsDiffedFromCurrent].
	self contentsChanged.