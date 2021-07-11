button-actions
togglePickStatusOfSelectedChangeListItem

	self hasSelectedChangeListItem ifFalse: [^ self].

	self selectedChangeListItem toggleIsPicked.
	self updateGroup.
	self updateAfterPick