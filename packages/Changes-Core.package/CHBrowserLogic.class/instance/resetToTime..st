resetting
resetToTime: aTimeStamp 

	| newestTimeStamp indexOfMaxRecord isBefore indexOfAccordingSnapshot wholeChangeList partChangeList |
	
	wholeChangeList := self imageStateListModel getWholeChangeList.
	indexOfAccordingSnapshot := self imageStateListModel getChangeListIndexTime: aTimeStamp.
	partChangeList := self imageStateListModel getChangeListForImageStateAt: indexOfAccordingSnapshot.
	
	self resetImageState: wholeChangeList with: partChangeList.

	isBefore := true.
	newestTimeStamp := TimeStamp fromString: '1 January 1000 00:00:00 am'.

	1 to: partChangeList changeList size
		do: [:index | 
			| timeStamp |

			timeStamp := self class extractFlooredTimeStampFrom: (partChangeList changeList at: index).
			timeStamp
				ifNotNil: [(isBefore and: [newestTimeStamp < timeStamp or: [newestTimeStamp = timeStamp]])
						ifTrue: [(timeStamp < aTimeStamp or: [timeStamp = aTimeStamp])
								ifTrue: [newestTimeStamp := timeStamp.
									indexOfMaxRecord := index].
							aTimeStamp < timeStamp
								ifTrue: [isBefore := false]]]].

	1 to: indexOfMaxRecord
		do: [:index | 
			| changeRecord |
			changeRecord := partChangeList changeList at: index.
			(changeRecord isRevertable)
				ifTrue: [changeRecord fileIn]].
	self refresh.