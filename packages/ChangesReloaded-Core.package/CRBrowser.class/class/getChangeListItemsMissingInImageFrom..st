utils
getChangeListItemsMissingInImageFrom: anOrderedCollectionOfChangeRecords

	| changeListItems | 
	changeListItems := (anOrderedCollectionOfChangeRecords 
		reject: [:each | each isMisc])
		collect: [:each | CRChangeListItem newWith: each].
		
	changeListItems removeAllSuchThat: [:each | each category = #nonPersistentDoIt].
	
	^ self encapsulateMethodRenamedFrom: changeListItems