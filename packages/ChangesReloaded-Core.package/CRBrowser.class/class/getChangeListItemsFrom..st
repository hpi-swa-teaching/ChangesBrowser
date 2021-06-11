utils
getChangeListItemsFrom: anOrderedCollectionOfChangeRecords

	^ (anOrderedCollectionOfChangeRecords 
		reject: [:each | each isMisc])
		collect: [:each | CRChangeListItem new changeRecord: each]