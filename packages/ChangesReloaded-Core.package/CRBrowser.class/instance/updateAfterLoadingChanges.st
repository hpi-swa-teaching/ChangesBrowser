updating
updateAfterLoadingChanges

	| newChangeListItems |
	newChangeListItems := self class getChangeListItemsFrom:
										(self class getChangeRecordsFrom: self usedChangeFile).
	self removeAllChangeListItemsExcept: newChangeListItems.
	self updateAfterChangeListChange