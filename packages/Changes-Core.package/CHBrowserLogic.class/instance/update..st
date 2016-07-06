updating
update: aValue

	aValue == #listIndex ifTrue: [self browser contents: self changeList contentsDiffedFromCurrent].
	self browser contentsChanged.