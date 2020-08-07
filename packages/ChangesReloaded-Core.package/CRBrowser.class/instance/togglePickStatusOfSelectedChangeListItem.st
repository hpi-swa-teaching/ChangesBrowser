button-actions
togglePickStatusOfSelectedChangeListItem

	self hasSelectedChangeListItem ifFalse: [^ self].

	self selectedChangeListItem togglePickStatus.
	self updateAfterPick