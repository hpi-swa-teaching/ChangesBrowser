button actions
showImageStatesContainingInput
	self close.
	self changesBrowserLogic loadImageStatesContaining: self contents asString.