as yet unclassified
resetToTime: aTimeStamp 

	| changeList timeStampForChangeList newestTimeStamp indexOfMaxRecord isBefore |

	Smalltalk snapshot: true andQuit: false.
	self refresh.

	isBefore := true.
	newestTimeStamp := TimeStamp fromString: '1 January 1000 00:00:00 am'.
	changeList := self versionListModel getChangeListForTime: aTimeStamp.
	timeStampForChangeList := ChangesBrowser extractTimeStampFrom: changeList changeList first.

	"TODO"
	1 to: changeList changeList size
		do: [:index | 
			| timeStamp |
			timeStamp := ChangesBrowser extractTimeStampFrom: (changeList changeList at: index).
			timeStamp
				ifNotNil: [(isBefore and: [newestTimeStamp < timeStamp])
						ifTrue: [timeStamp < aTimeStamp
								ifTrue: [newestTimeStamp := timeStamp.
									indexOfMaxRecord := index].
							timeStamp = aTimeStamp
								ifTrue: [newestTimeStamp := timeStamp.
									indexOfMaxRecord := index.
									isBefore := false].
							aTimeStamp < timeStamp
								ifTrue: [isBefore := false]]]].
self halt.
	self resetToTime: timeStampForChangeList with: changeList.
	1 to: indexOfMaxRecord
		do: [:index | 
			| changeRecord |
			changeRecord := changeList changeList at: index.
			(changeRecord string beginsWith: 'self')
				ifFalse: [changeRecord fileIn]].
	self refresh