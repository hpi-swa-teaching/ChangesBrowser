testing
assertLatestChangeListItemSelectedFor: aHistoryListItem

	| itemsThatShouldBeSelected |
	itemsThatShouldBeSelected := OrderedCollection new.
	itemsThatShouldBeSelected add: aHistoryListItem history first.
	
	"We only want to check whether the elements are the same not whether they are sorted in the same way. Therefore we use OrderedCollections instead of SortedCollections."
	self assert: (itemsThatShouldBeSelected = aHistoryListItem selectedChangeListItems asOrderedCollection).
	
	self assert: (aHistoryListItem history first) isSelected