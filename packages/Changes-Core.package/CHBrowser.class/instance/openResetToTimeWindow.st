button actions
openResetToTimeWindow
	| window |
	window := CHTimeResetWindow open.
	window model changesBrowserLogic: self changesBrowserLogic.