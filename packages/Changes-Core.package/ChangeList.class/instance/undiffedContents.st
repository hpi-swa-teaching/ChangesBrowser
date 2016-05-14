viewing access
undiffedContents
	^ self listIndex = 0
		ifTrue: ['']
		ifFalse: [(self changeList at: self listIndex) text]