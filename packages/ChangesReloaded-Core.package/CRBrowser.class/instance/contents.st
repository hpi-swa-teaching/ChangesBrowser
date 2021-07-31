accessing
contents

	^ self hasChanges
		ifTrue: [self hasSelectedChangeListItem
			ifTrue: [self selectedChangeListItem content]
			ifFalse: ['']]
		ifFalse: [self class noChangesInfoString]