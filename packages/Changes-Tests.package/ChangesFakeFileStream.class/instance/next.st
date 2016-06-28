overwriting
next
	(self position < self string size)
		ifTrue: [self position: self position + 1. ^ self string at: (self position)]
		ifFalse: [^ nil]