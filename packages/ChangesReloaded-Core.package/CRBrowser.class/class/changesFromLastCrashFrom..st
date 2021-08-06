utils
changesFromLastCrashFrom: aMultiByteFileStream
	
	^ ((self changeRecordsFromLastCrashFrom: aMultiByteFileStream) 
		reject: [:each | each isMisc])
		collect: [:each | CRChangeListItem newWith: each]
		
	 