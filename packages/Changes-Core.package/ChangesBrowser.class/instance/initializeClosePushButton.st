initialization
initializeClosePushButton

	self
		connect: self ui closePushButton
		signal: #clicked:
		to: self
		selector: #close