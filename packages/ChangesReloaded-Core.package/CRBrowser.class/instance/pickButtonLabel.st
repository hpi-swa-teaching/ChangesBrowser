buttons
pickButtonLabel

	^ (self hasSelectedGroup)
		ifFalse: ['Pick or unpick changes']
		ifTrue: [self hasSelectedChangeListItem
			ifTrue: ['Pick']
			ifFalse: ['Unpick All Versions']]