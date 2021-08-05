testing
testDescriptionAttributes

	self assertCorrectPickedAttributes: self changeGroup description.
	
	self changeGroup unpickAll.
	self assertCorrectUnpickedAttributes: self changeGroup description.
	
	self changeGroup chooseVersionAt: 1.
	self assertCorrectPickedAttributes: self changeGroup description.

	