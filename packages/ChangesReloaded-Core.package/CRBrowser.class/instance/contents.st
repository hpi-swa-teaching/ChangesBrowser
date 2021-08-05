accessing
contents

	^ self hasChanges
		ifTrue: [self hasSelectedChangeListItem
			ifTrue: [self selectedChangeListItem displayText]
			ifFalse: ['']]
		ifFalse: [self class noChangesInfoString]