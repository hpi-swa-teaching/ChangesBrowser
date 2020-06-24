accessing
basicNext

	self atEnd not
		ifTrue: [self position: self position + 1.
				^ self string at: self position]
		ifFalse: [^ nil]