initializing
getHistoryListFrom: anOrderedCollectionOfChangeRecords

	| historyList |
	historyList := OrderedCollection new.
	anOrderedCollectionOfChangeRecords
		do: [:each | each isMethod
				ifTrue: [
					| methodSelector methodClass historyListItemCandidates historyListItem changeListItem |
					methodSelector := each methodSelector.
					methodClass := each methodClassName.
					historyListItemCandidates := historyList select: [:changeInHistory |
						changeInHistory selector == methodSelector].
					changeListItem := CRChangeListItem new changeRecord: each.
					historyListItemCandidates
						ifEmpty: [
							historyListItem := CRHistoryListItem newWithSelector: methodSelector class: methodClass andChange: changeListItem.
							historyList add: historyListItem];
						ifNotEmpty: [
							historyListItem := historyListItemCandidates first.
							historyListItem history add: changeListItem]]].
	^ historyList