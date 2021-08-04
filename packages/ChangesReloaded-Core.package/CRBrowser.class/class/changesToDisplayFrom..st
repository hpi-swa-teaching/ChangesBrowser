utils
changesToDisplayFrom: aMultiByteFileStream
	
	CRSessionState instance hasAlreadyFiledIn ifTrue: [^ OrderedCollection new].
	
	^ (self changesFromLastCrashFrom: aMultiByteFileStream) removeAllSuchThat: [:each | each category = #nonPersistentDoIt].
	
	
	
		
	 