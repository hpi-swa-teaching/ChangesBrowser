utils
getChangeListItemsFrom: anOrderedCollectionOfChangeRecords

	^ (anOrderedCollectionOfChangeRecords 
		reject: [:each | each type == #misc])
		collect: [:each | CRChangeListItem new changeRecord: each]