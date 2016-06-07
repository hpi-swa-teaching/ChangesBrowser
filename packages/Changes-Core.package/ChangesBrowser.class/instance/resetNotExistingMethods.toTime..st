as yet unclassified
resetNotExistingMethods: aChangeList toTime: aTimeStamp 

	| listOfRemovedSelectorRecords listOfRemovedMethodsWithClasses olderChangeRecords |

	listOfRemovedSelectorRecords := aChangeList changeList
				select: [:changeRecord | changeRecord type == #doIt
						and: [changeRecord string matchesRegex: '[\w]+ (removeSelector\: #)([\w]|[\W])*']].
	
	listOfRemovedSelectorRecords isEmpty
		ifFalse:[	"Do this check just for performance"			
			listOfRemovedMethodsWithClasses := Set new.
			listOfRemovedSelectorRecords
				do: [:aChangeRecord | 
					| selector class positionOfFirstSpace positionOfSecondSpace |
					positionOfFirstSpace := aChangeRecord string findString: ' '.
					positionOfSecondSpace := aChangeRecord string findString: ' ' startingAt: positionOfFirstSpace + 1.
					class := aChangeRecord string copyFrom: 1 to: positionOfFirstSpace - 1.
					selector := aChangeRecord string copyFrom: positionOfSecondSpace + 2 to: aChangeRecord string size.
					listOfRemovedMethodsWithClasses add: {selector. class}].

			olderChangeRecords := (self class browseRecent: (self versionListModel positions at: self versionListModel selectedIndex) - self versionListModel positions last) changeList reversed.
			listOfRemovedMethodsWithClasses
				do: [:aMethodAndClass | | newestChangeRecordBeforeTimeStamp |
					newestChangeRecordBeforeTimeStamp := olderChangeRecords detect: [:aChangeRecord |
								aChangeRecord type == #method
								and: [aChangeRecord methodSelector asSymbol == aMethodAndClass first asSymbol]
								and: [aChangeRecord method name = aMethodAndClass second]
								and: [aChangeRecord timeStamp < aTimeStamp]]
						ifNone: [newestChangeRecordBeforeTimeStamp := nil].
					newestChangeRecordBeforeTimeStamp notNil ifTrue: [newestChangeRecordBeforeTimeStamp fileIn].]]