updating
updateAfterLoadingChanges

	| newChangeListItems |
	newChangeListItems := self class getChangeListItemsFrom:
										(self class getChangeRecordsMissingInImageFrom:
											self usedChangeFile).
	self removeAllChangeListItemsExcept: newChangeListItems.
	self updateAfterChangeListChange