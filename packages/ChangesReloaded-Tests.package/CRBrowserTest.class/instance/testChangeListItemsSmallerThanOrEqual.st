testing-functionality
testChangeListItemsSmallerThanOrEqual
	
	| changes youngerChangeListItem olderChangeListItem|
	changes := self changesBrowser class retrieveChangeRecordsFrom: self class mockWeirdlySortedChanges.
	
	youngerChangeListItem := CRChangeListItem newWithRecord: (changes at: 2).
	olderChangeListItem := CRChangeListItem newWithRecord: (changes at: 5).
	
	self assert: olderChangeListItem <= youngerChangeListItem.
	self assert: olderChangeListItem <= olderChangeListItem