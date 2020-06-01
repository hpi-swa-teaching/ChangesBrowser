accessing
setItemSelectionAt: anInteger to: aBoolean

	(self changeListItems at: anInteger) isSelected: aBoolean.
	
	self repaintListSelections