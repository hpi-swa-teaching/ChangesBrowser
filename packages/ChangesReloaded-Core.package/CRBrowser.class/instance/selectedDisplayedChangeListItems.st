accessing
selectedDisplayedChangeListItems

	"TODO: remove once PR #85 Implement loading changes was merged"
	^ self isDisplayedChangeListItemSelected
			ifTrue: [self selectedHistoryListItem history select: [:each | each isSelected]]
			ifFalse: [SortedCollection new]