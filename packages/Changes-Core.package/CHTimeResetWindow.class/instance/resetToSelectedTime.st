button actions
resetToSelectedTime
	self close.
	self changesBrowser resetToTime: (TimeStamp fromString: self contents asString).