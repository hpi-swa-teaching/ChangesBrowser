button-actions
invertSelection

	self displayedChangeListItems do: [:each |
		each isSelected: (each isSelected not)].

	self updateAfterChangeSelection
