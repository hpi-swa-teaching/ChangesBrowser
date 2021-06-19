utils
getChangeListItemsMissingInImageFrom: anOrderedCollectionOfChangeRecords

	| changeListItems | 
	changeListItems := (anOrderedCollectionOfChangeRecords 
		reject: [:each | each isMisc])
		collect: [:each | CRChangeListItemBuilder newChangeListItemWith: each].
		
	changeListItems removeAllSuchThat: [:each | each category = #nonPersistentDoIt].
	
	^ changeListItems