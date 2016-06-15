button actions
resetToSelectedTime
	self close.
	self changeBrowser resetToTime: (TimeStamp fromString: self contents asString).