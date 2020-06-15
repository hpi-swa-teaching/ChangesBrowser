button-actions
invertSelection

	self changeListItems do: [:each |
		each isSelected: (each isSelected not)].

	self repaintListSelections
