initialize-release
removeAllChangeListItemsWithEmptyDescription

	self changeListItems: 
		(self changeListItems reject: [:each | each description = CRChangeRecordDescriber emptyDescription])