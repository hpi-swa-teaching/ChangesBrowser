button-actions
togglePickStatus

	self hasSelectedChangeListItem ifFalse: [^ self].
	
	self selectedChangeListItem isPicked: (self selectedChangeListItem isPicked not).
	self updateAfterPick