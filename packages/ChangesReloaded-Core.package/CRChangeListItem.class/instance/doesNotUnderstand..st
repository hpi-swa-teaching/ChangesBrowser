error handling
doesNotUnderstand: aMessage
	"Support all methods of the changeRecord by delegating messages that we don't understand to it."
	
	^ self changeRecord perform: aMessage selector
