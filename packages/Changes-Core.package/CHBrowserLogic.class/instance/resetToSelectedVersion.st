resetting
resetToSelectedVersion

	| changeList wholeChangeList |
	changeList := self imageStateListModel getChangeListForSelectedImageState.
	wholeChangeList := self imageStateListModel getWholeChangeList.
	self resetImageState: wholeChangeList with: changeList