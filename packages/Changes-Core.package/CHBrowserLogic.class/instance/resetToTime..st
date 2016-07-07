resetting
resetToTime: aTimeStamp 

	| changeList timeStampForChangeList newestTimeStamp indexOfMaxRecord isBefore |

	self saveSnapshot.

	isBefore := true.
	newestTimeStamp := TimeStamp fromString: '1 January 1000 00:00:00 am'.
	changeList := self imageStateListModel getChangeListForTime: aTimeStamp fromFile: self changesFile.

	1 to: changeList changeList size
		do: [:index | 
			| timeStamp |

			timeStamp := CHBrowserLogic extractFlooredTimeStampFrom: (changeList changeList at: index).
			timeStamp
				ifNotNil: [(isBefore and: [newestTimeStamp < timeStamp or: [newestTimeStamp = timeStamp]])
						ifTrue: [(timeStamp < aTimeStamp or: [timeStamp = aTimeStamp])
								ifTrue: [newestTimeStamp := timeStamp.
									indexOfMaxRecord := index].
							aTimeStamp < timeStamp
								ifTrue: [isBefore := false]]]].

	timeStampForChangeList := CHBrowserLogic extractCeiledTimeStampFrom: changeList changeList first.
	self resetToTime: timeStampForChangeList with: changeList.

	1 to: indexOfMaxRecord
		do: [:index | 
			| changeRecord |
			changeRecord := changeList changeList at: index.
			((changeRecord string beginsWith: 'self') or: [changeRecord string beginsWith: '----'])
				ifFalse: [changeRecord fileIn]].
	self refresh.