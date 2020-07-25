testing-functionality
testChangeListItemsGreaterThanOrEqual

	| changes youngerChangeListItem olderChangeListItem |
	changes := self class mockWeirdlySortedChanges.

	youngerChangeListItem := CRChangeListItem newWithRecord: changes second.
	olderChangeListItem := CRChangeListItem newWithRecord: changes fifth.

	self
		assert: youngerChangeListItem >= olderChangeListItem;
		assert: olderChangeListItem >= olderChangeListItem