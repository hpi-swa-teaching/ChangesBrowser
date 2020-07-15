testing-functionality
testChangeListItemsSmallerThanOrEqual
	
	| changes youngerChangeListItem olderChangeListItem |
	changes := self changesBrowser class retrieveChangeRecordsFrom: self class mockWeirdlySortedChanges.
	
	youngerChangeListItem := CRChangeListItem newWithRecord: (changes second).
	olderChangeListItem := CRChangeListItem newWithRecord: (changes fifth).
	
	self assert: olderChangeListItem <= youngerChangeListItem.
	self assert: olderChangeListItem <= olderChangeListItem
