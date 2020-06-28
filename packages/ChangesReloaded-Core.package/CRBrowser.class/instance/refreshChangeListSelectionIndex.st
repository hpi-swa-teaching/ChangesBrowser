updating
refreshChangeListSelectionIndex

	self selectedDisplayedChangeListItems
		ifEmpty: [self changeListSelectionIndex: 0]
		ifNotEmpty: [self changeListSelectionIndex:
			(self displayedChangeListItems indexOf:
				self selectedDisplayedChangeListItems first)]