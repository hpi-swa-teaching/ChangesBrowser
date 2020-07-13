building
togglePickStatus

	self hasSelectedChangeListItem ifTrue: [
		self selectedChangeListItem isPicked: (self selectedChangeListItem isPicked not).
		self
			updatePickButton;
			refreshChangeList;
			repaintChangeListSelection;
			selectNextChangeListItem]