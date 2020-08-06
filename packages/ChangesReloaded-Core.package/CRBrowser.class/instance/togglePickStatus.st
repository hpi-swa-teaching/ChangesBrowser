button-actions
togglePickStatus

	self hasSelectedChangeListItem ifFalse: [^ self].

	self selectedChangeListItem toggle.
	self updateAfterPick