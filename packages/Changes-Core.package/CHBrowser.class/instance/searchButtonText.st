button actions
searchButtonText
	self changesBrowserLogic searchEnabled 
		ifTrue: [^'Reset Search']
		ifFalse: [^'Search image states']