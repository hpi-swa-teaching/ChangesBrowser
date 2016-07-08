button actions
searchButtonText
	self browserLogic searchEnabled 
		ifTrue: [^'Reset Search']
		ifFalse: [^'Search image states']