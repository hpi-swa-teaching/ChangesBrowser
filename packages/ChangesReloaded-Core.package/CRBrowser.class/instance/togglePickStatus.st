building
togglePickStatus

	self selectedChangeListItem isPicked: (self selectedChangeListItem isPicked not).
	self
		updatePickButton;
		refreshChangeList;
		repaintChangeListSelection