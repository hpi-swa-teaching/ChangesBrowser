button-actions
togglePickStatusOfSelectedChangeListItem

	self hasSelectedChangeListItem ifFalse: [^ self].

	self selectedChangeListItem togglePickStatusOfSelectedChangeListItem.
	self updateAfterPick