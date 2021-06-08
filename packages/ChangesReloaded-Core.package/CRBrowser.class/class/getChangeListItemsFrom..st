utils
getChangeListItemsFrom: anOrderedCollectionOfChangeRecords

	^ anOrderedCollectionOfChangeRecords
		collect: [:each | CRChangeListItem new changeRecord: each]