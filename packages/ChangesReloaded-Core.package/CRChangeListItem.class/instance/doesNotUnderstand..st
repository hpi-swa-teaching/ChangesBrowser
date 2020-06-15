accessing
doesNotUnderstand: aMessage
	
	^ self changeRecord perform: aMessage selector