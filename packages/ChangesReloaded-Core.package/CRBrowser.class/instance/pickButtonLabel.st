buttons
pickButtonLabel

	^ (self hasSelectedGroup)
		ifTrue: [self hasSelectedChangeListItem
			ifTrue: ['Choose This Version']
			ifFalse: ['Reject All Versions']]
		ifFalse: ['Choose Versions']