as yet unclassified
update: aValue

	aValue == #listIndex ifTrue: [self contents: self changeList contentsDiffedFromCurrent].
	self contentsChanged.