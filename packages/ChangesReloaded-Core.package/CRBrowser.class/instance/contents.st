accessing
contents

	^ self hasChanges
		ifTrue: [self hasSelectedChangeListItem
			ifTrue: [self codeOfSelectedChange]
			ifFalse: ['']]
		ifFalse: [self class noChangesInfoString].