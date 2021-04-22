buttons
loadButtonLabel

	^ self numberOfPickedChangeListItems = 0
		ifTrue: ['Pick changes to load them']
		ifFalse: [self numberOfPickedChangeListItems = 1
			ifTrue: ['Load 1 change']
			ifFalse: ['Load ' , self numberOfPickedChangeListItems , ' changes']]