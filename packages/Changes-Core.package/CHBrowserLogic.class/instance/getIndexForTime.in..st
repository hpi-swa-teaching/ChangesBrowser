resetting
getIndexForTime: aTimeStamp in: aChangeList

	| newestTimeStamp indexOfMaxRecord isBefore |

	isBefore := true.
	newestTimeStamp := TimeStamp fromString: '1 January 1000 00:00:00 am'.
	indexOfMaxRecord := -1.

	1 to: aChangeList changeList size
		do: [:index | 
			| timeStamp |
			timeStamp := self class extractFlooredTimeStampFrom: (aChangeList changeList at: index).
			timeStamp
				ifNotNil: [(isBefore and: [newestTimeStamp < timeStamp or: [newestTimeStamp = timeStamp]])
						ifTrue: [(timeStamp < aTimeStamp or: [timeStamp = aTimeStamp])
								ifTrue: [newestTimeStamp := timeStamp.
									indexOfMaxRecord := index].
							aTimeStamp < timeStamp
								ifTrue: [isBefore := false]]]].
	^ indexOfMaxRecord