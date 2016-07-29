resetting
getStartpositionForDeletedClassRecoveryIn: aWholeChangeList for: aClassName 

	| lastDeleteEntryPosition |
	lastDeleteEntryPosition := self getIndexOfFirstDeletedClassRecordIn: aWholeChangeList for: aClassName.
	lastDeleteEntryPosition = -1
		ifFalse: [^ lastDeleteEntryPosition]
	