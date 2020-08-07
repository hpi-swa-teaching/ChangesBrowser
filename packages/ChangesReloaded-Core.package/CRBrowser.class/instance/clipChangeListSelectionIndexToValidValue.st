actions
clipChangeListSelectionIndexToValidValue

	self changeListSelectionIndex <= 0
		ifTrue: [self changeListSelectionIndex: 1]
		ifFalse: [self changeListSelectionIndex > self changeListItems size
				ifTrue: [self changeListSelectionIndex: self changeListItems size]]