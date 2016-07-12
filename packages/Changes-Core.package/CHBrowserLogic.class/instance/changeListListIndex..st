accessing-changeList
changeListListIndex: aValue

	self changesBrowser changeSelected: (
		((self changeList listSelections count: [:bool | bool]) <= 1)
		and: [aValue = 0]) not.
		self changesBrowser contentsChanged.
	^ self changeList listIndex: aValue