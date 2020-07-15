testing-functionality
testHistoryListItemsGreaterThan

	| changes youngerChangeListItem olderChangeListItem youngerHistoryListItem olderHistoryListItem |
	changes := self class mockWeirdlySortedChanges.

	youngerChangeListItem := CRChangeListItem newWithRecord: changes second.
	olderChangeListItem := CRChangeListItem newWithRecord: changes fifth.

	youngerHistoryListItem := CRHistoryListItem new 
		history: (SortedCollection new add: youngerChangeListItem; add: olderChangeListItem; yourself).
	olderHistoryListItem := CRHistoryListItem new 
		history: (SortedCollection new add: olderChangeListItem; yourself).

	self assert: youngerHistoryListItem > olderHistoryListItem