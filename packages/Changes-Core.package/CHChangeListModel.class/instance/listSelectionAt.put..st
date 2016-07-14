accessing
listSelectionAt: aValue put: anotherValue
	^ super listSelectionAt: (self indexMap at: aValue) put: anotherValue.