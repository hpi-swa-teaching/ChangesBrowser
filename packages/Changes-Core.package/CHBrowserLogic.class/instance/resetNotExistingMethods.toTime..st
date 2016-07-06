resetting
resetNotExistingMethods: aChangeList toTime: aTimeStamp 

	| listOfRemovedSelectorRecords listOfRemovedMethodsWithClasses olderChangeRecords |

	listOfRemovedSelectorRecords := aChangeList changeList
				select: [:changeRecord | changeRecord type == #doIt
						and: [changeRecord string matchesRegex: CHBrowser removeSelectorRegex]].
	
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

			olderChangeRecords := (CHChangeListModel browseRecent: (self imageStateListModel positions at: self imageStateListModel selectedIndex) - self imageStateListModel positions last) changeList reversed.
			listOfRemovedMethodsWithClasses
				do: [:aMethodAndClass | | newestChangeRecordBeforeTimeStamp |
					newestChangeRecordBeforeTimeStamp := olderChangeRecords detect: [:aChangeRecord |
								aChangeRecord type == #method
								and: [aChangeRecord methodSelector asSymbol == aMethodAndClass first asSymbol]
								and: [aChangeRecord methodClassName = aMethodAndClass second]
								and: [aChangeRecord timeStamp < aTimeStamp]]
						ifNone: [newestChangeRecordBeforeTimeStamp := NullChangeRecord new].
					newestChangeRecordBeforeTimeStamp fileIn.]]