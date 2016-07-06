button actions
openResetToTimeWindow
	|window|
	window := CHTimeResetWindow open.
	window model changesBrowser: self.