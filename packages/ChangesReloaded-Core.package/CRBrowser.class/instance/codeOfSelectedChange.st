updating
codeOfSelectedChange

	^ self hasSelectedMethodChangeListItem
		ifTrue: [self diffFromPriorSourceFor: self selectedChangeListItem string]
		ifFalse: [self selectedChangeListItem string]