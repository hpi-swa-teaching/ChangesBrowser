initializing
getHistoryListFrom: anOrderedCollectionOfChangeRecords

	| history |
	history := Dictionary new.
	(anOrderedCollectionOfChangeRecords
		select: [:each | each isMethod])
		do: [:each |
					| changeListItem historyItem historyItemId |
					changeListItem := CRChangeListItem new changeRecord: each.
					historyItemId := each className , each methodSelector.
					historyItem := history
											at: historyItemId
											ifAbsentPut: [CRHistoryListItem
																newWithSelector: (each methodSelector)
																class: (each className)
																andChange: changeListItem].
					historyItem history add: changeListItem].
	^ history asOrderedCollection