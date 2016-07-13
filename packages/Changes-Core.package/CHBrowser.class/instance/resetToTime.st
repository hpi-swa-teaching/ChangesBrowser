button actions
resetToTime
	| timeStamp |
	timeStamp := UIManager default 
		request: 'enter a timestamp'
		initialAnswer: TimeStamp now asString.
	timeStamp ifNotEmpty: [
		self changesBrowserLogic resetToTime: (TimeStamp fromString: timeStamp)].