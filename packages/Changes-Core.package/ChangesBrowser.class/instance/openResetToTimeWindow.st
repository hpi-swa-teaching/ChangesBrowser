button actions
openResetToTimeWindow
	|window|
	window := ChangesTimeResetWindow open.
	window model changesBrowser: self.