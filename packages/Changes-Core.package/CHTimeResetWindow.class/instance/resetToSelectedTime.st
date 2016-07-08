button actions
resetToSelectedTime
	self close.
	self changesBrowserLogic resetToTime: (TimeStamp fromString: self contents asString).