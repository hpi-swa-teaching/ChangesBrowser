initializing
getHistoryListFrom: anOrderedCollectionOfChangeRecords

	| history |
	history := Dictionary new.
	(anOrderedCollectionOfChangeRecords
		select: [:each | each isMethod])
		do: [:each |
					| changeListItem historyItem historyItemId |
					changeListItem := CRChangeListItem new changeRecord: each.
					historyItemId := each methodClassName , each methodSelector.
					historyItem := history
											at: historyItemId
											ifAbsentPut: [CRHistoryListItem
																newWithSelector: (each methodSelector)
																andClass: (each methodClass)].
					historyItem history add: changeListItem].
	^ history asOrderedCollection