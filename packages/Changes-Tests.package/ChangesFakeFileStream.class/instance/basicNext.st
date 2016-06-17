overwriting
basicNext
	(position < string size)
		ifTrue: [^ string at: (position := position + 1)]
		ifFalse: [^ nil]