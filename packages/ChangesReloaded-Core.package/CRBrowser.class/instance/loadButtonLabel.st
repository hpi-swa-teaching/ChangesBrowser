buttons
loadButtonLabel

	^ self numberOfPickedChangeListItems = 0
		ifTrue: ['Load Changes']
		ifFalse: [self numberOfPickedChangeListItems = 1
			ifTrue: ['Load 1 Change']
			ifFalse: ['Load ' , self numberOfPickedChangeListItems , ' Changes']]