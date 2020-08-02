accessing
selectedChangeListItem

	^ self hasValidChangeListSelectionIndex
		ifTrue: [self changeListItems at: self changeListSelectionIndex]
		ifFalse: [nil]