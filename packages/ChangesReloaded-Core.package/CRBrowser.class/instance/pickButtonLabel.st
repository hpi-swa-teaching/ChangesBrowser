buttons
pickButtonLabel

	^ self hasSelectedChangeListItem 
		ifFalse: ['Pick or unpick changes']
		ifTrue: [self selectedChangeListItem isPicked
			ifTrue: ['Unpick']
			ifFalse: ['Pick']]