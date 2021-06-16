accessing
selectedChangeListItem
	
	^ self hasValidChangeListSelectionIndex
		ifTrue: [self changeListItems at: (self indexOfSelectedChangeListItem)]
		ifFalse: [nil]