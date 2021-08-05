buttons
pickButtonLabel

	^ (self hasSelectedGroup)
		ifFalse: ['Choose Versions']
		ifTrue: [self hasSelectedChangeListItem
			ifTrue: ['Choose This Version']
			ifFalse: ['Reject All Versions']]