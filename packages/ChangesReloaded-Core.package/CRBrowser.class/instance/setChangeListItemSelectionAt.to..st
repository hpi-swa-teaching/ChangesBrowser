accessing
setChangeListItemSelectionAt: anInteger to: aBoolean

	(self displayedChangeListItems at: anInteger) isSelected: aBoolean.
	
	self updateAfterChangeSelection