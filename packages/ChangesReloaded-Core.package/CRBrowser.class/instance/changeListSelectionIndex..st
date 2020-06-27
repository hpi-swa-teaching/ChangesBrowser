accessing
changeListSelectionIndex: anInteger

	changeListSelectionIndex := anInteger.
	self displayedChangeListItems do: [:each | each isSelected: false].
	self hasValidChangeListSelectionIndex
		ifTrue: [(self displayedChangeListItems at: anInteger) isSelected: true].
	self updateAfterChangeSelection