accessing
setItemSelectionAt: anInteger to: aBoolean

	(self changeListItems at: anInteger) isSelected: aBoolean.
	
	"Repaint list selection immediately."
	self changed: #isItemSelectedAt: