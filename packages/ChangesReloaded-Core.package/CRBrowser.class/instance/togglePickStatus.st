button-actions
togglePickStatus

	self hasSelectedChangeListItem ifTrue: [
		self selectedChangeListItem isPicked: (self selectedChangeListItem isPicked not).
		self updateAfterPick]