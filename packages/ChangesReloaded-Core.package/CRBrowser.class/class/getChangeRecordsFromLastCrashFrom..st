utils
getChangeRecordsFromLastCrashFrom: aMultiByteFileStream

	| changeRecords startupIndex saveOrQuitIndex |
	
	Smalltalk assureStartupStampLogged.
	
	changeRecords := (self retrieveChangeRecordsFrom: aMultiByteFileStream) reversed
		ifEmpty: [^ OrderedCollection new].
	startupIndex := (1 to: changeRecords size) detect: [:i | (changeRecords at: i) isStartup] 
		ifNone: [^ OrderedCollection new].
	saveOrQuitIndex := (startupIndex to: changeRecords size) detect: [:i | (changeRecords at: i) isSaveOrQuit]
		ifNone: [^ OrderedCollection new].

	^ changeRecords copyFrom: startupIndex to: saveOrQuitIndex
