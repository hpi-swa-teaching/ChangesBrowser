button actions
openSearchWindow
	|window|
	window := CHSearchWindow open.
	window model changesBrowserLogic: self browserLogic.