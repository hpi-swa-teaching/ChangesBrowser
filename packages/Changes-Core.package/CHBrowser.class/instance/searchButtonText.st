buttonActions
searchButtonText

	self searchEnabled
		ifTrue: [^'Reset Search']
		ifFalse: [^'Search image states']