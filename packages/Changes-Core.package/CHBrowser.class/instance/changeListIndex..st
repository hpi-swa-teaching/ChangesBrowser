as yet unclassified
changeListIndex: aValue
	self changeSelected:
		(((self changeList listSelections count: [:bool | bool]) <= 1)
		and: [aValue = 0]) not.
	self contentsChanged.
	self changed: #changeSelected.
	self changeList listIndex: aValue.
