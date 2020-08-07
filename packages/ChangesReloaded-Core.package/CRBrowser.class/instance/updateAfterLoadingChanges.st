updating
updateAfterLoadingChanges

	| newChangeListItems |
	newChangeListItems := CRBrowser getChangeListItemsFrom:
										(CRBrowser getChangeRecordsMissingInImageFrom:
											self usedChangeFile).
	self removeAllChangeListItemsExcept: newChangeListItems.
	self updateAfterChangeListChange