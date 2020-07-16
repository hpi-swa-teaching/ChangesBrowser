testing-functionality
testChangeListItemsSmallerThanOrEqual

	| changes youngerChangeListItem olderChangeListItem |
	changes := self class mockWeirdlySortedChanges.

	youngerChangeListItem := CRChangeListItem newWithRecord: changes second.
	olderChangeListItem := CRChangeListItem newWithRecord: changes fifth.

	self
		assert: olderChangeListItem <= youngerChangeListItem;
		assert: olderChangeListItem <= olderChangeListItem