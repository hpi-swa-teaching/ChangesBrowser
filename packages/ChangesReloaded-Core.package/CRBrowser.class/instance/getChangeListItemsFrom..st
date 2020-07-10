initializing
getChangeListItemsFrom: anOrderedCollectionOfChangeRecords

	| changeListItems |
	changeListItems := SortedCollection new.
	(anOrderedCollectionOfChangeRecords 
		select: [:each | each isMethod or: each isClassComment])
		do: [:each |
					| changeListItem |
					changeListItem := CRChangeListItem new changeRecord: each.
					changeListItems add: changeListItem].
	^ changeListItems asSortedCollection sort: [:a :b | a > b]