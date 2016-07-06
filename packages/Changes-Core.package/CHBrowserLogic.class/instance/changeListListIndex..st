accessing-changeList
changeListListIndex: aValue

	self browser changeSelected: (
		((self changeList listSelections count: [:bool | bool]) <= 1)
		and: [aValue = 0]) not.
		self browser contentsChanged.
	^ self changeList listIndex: aValue