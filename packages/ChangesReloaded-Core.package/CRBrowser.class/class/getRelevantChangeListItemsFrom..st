utils
getRelevantChangeListItemsFrom: aMultiByteFileStream

	CRSessionState instance hasAlreadyFiledIn ifTrue: [^ OrderedCollection new].
	
	^ ((self getChangeRecordsFromLastCrashFrom: aMultiByteFileStream) 
		removeAllSuchThat: [:each | each isMisc];
		collect: [:each | CRChangeListItem newWith: each])
		removeAllSuchThat: [:each | each category = #nonPersistentDoIt]