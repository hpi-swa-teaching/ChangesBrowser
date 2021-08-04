testing
testDescriptionAttributes

	self assertCorrectPickedAttributes: self changeGroup description.
	
	self changeGroup pickAt: 0.
	self assertCorrectUnpickedAttributes: self changeGroup description.
	
	self changeGroup pickAt: 2.
	self assertCorrectPickedAttributes: self changeGroup description.

	