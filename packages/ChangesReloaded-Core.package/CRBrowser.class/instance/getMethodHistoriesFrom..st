initializing
getMethodHistoriesFrom: anOrderedCollectionOfChangeRecords

	| methodHistories |
	methodHistories := Dictionary new.
	anOrderedCollectionOfChangeRecords
		do: [:each | each isMethod
				ifTrue: [
					| methodSelector changeListItem |
					methodSelector := each methodSelector.
					changeListItem := CRChangeListItem new changeRecord: each.
					methodHistories
						at: methodSelector
						ifAbsentPut: [OrderedCollection new add: changeListItem; yourself]
						ifPresentPut: [:methodHistory | methodHistory add: changeListItem; yourself]]].
	^ methodHistories