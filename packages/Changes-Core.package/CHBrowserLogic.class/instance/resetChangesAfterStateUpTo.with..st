resetting
resetChangesAfterStateUpTo: aTimeStamp with: partChangeList

	| indexOfMaxRecord |
	indexOfMaxRecord := self getIndexForTime: aTimeStamp in: partChangeList.
	1 to: indexOfMaxRecord
		do: [:index | 
			| changeRecord |
			changeRecord := partChangeList changeList at: index.
			(changeRecord isRevertable)
				ifTrue: [changeRecord fileIn]].