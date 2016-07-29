resetting
getIndexOfFirstDeletedClassRecordIn: aWholeChangeList for: aClassName 

	| firstIndex lastDeleteEntry |
	firstIndex := 0.
	lastDeleteEntry := aWholeChangeList changeList reversed
		detect: [:aChangeRecord | aChangeRecord string
				= (CHBrowserLogic deletedClassIdentifierFor: aClassName)]
		ifNone: [firstIndex := -1].
	firstIndex = -1
		ifFalse: [firstIndex := aWholeChangeList indexOf: lastDeleteEntry].
	^ firstIndex
	