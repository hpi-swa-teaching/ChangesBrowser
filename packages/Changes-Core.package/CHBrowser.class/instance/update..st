updating
update: aValue 

	aValue == #listIndex
		ifTrue: [self contents: self changesBrowserLogic changeList contentsDiffedFromCurrent].
	self halt.
	self contentsChanged