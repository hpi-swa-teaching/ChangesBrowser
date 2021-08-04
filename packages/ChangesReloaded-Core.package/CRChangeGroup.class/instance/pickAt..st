actions
pickAt: index
	
	index isZero 
		ifTrue: [self setPickedStatus: false between: 1 and: self size.]
		ifFalse: [self setPickedStatus: false between: 1 and: index - 1.
				self setPickedStatus: true between: index and: self size.]
	