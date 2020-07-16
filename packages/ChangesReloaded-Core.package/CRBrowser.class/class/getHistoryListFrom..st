utils
getHistoryListFrom: anOrderedCollectionOfChangeRecords

	| history |
	history := Dictionary new.
	(anOrderedCollectionOfChangeRecords
		select: [:each | each isMethod])
		do: [:each |
			| changeListItem historyItem historyItemKey |
			changeListItem := CRChangeListItem new changeRecord: each.
			historyItemKey := each methodClassName , each methodSelector.
			historyItem := history
									at: historyItemKey
									ifAbsentPut: [CRHistoryListItem
													newWithSelector: (each methodSelector)
													andClass: (each methodClass)].
			historyItem addItem: changeListItem].
	^ history asSortedCollection sort: [:a :b | a > b]