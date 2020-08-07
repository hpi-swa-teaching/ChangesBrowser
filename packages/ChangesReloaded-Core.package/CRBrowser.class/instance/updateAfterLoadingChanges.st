updating
updateAfterLoadingChanges

	| newChangeListItems |
	newChangeListItems := CRBrowser getChangeListItemsFrom:
										(CRBrowser getChangeRecordsFrom: self usedChangeFile).
	self removeAllChangeListItemsExcept: newChangeListItems.
	self updateAfterChangeListChange