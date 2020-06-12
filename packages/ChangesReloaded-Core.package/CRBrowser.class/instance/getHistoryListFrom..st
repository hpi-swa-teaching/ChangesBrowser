initializing
getHistoryListFrom: anOrderedCollectionOfChangeRecords

	| historyList |
	historyList := OrderedCollection new.
	anOrderedCollectionOfChangeRecords
		do: [:each | each isMethod
				ifTrue: [
					| methodSelector historyListItemCandidates historyListItem changeListItem |
					methodSelector := each methodSelector.
					historyListItemCandidates := historyList select: [:changeInHistory |
						changeInHistory selector == methodSelector].
					changeListItem := CRChangeListItem new changeRecord: each.
					historyListItemCandidates
						ifEmpty: [
							historyListItem := CRHistoryListItem newWithSelector: methodSelector andChange: changeListItem.
							historyList add: historyListItem];
						ifNotEmpty: [
							historyListItem := historyListItemCandidates first.
							historyListItem history add: changeListItem]]].
	^ historyList