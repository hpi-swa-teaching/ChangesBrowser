contents
contents
	^ self showingAnyKindOfDiffs
		ifFalse: [self undiffedContents]
		ifTrue: [self currentDiffedFromContents]
			"Current is writing over one in list.  Show how I would change it"