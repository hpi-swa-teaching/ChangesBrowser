utils
getChangeListItemsFrom: anOrderedCollectionOfChangeRecords

	^ anOrderedCollectionOfChangeRecords
		"select: [:each | each isMethod or: each isClassComment]"
		collect: [:each | CRChangeListItem new changeRecord: each]