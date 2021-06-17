utils
getChangeListItemsFrom: anOrderedCollectionOfChangeRecords

	^ (anOrderedCollectionOfChangeRecords 
		reject: [:each | each isMisc])
		collect: [:each | CRChangeListItemBuilder newChangeListItemWith: each]