testing-functionality
testHistoryListItemsSmallerThan
	
	| changes youngerChangeListItem olderChangeListItem youngerHistoryListItem olderHistoryListItem|
	changes := self changesBrowser class retrieveChangeRecordsFrom: self class mockWeirdlySortedChanges.
	
	youngerChangeListItem := CRChangeListItem newWithRecord: (changes at: 2).
	olderChangeListItem := CRChangeListItem newWithRecord: (changes at: 5).
	
	youngerHistoryListItem := CRHistoryListItem new 
		history: (SortedCollection new add: youngerChangeListItem; add: olderChangeListItem; yourself).
	olderHistoryListItem := CRHistoryListItem new 
		history: (SortedCollection new add: olderChangeListItem; yourself).
	
	self assert: olderHistoryListItem < youngerHistoryListItem