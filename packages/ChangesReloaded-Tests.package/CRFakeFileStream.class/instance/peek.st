accessing
peek

	^ self atEnd not
		ifTrue: [self string at: (self position + 1)] 
		ifFalse: [nil]