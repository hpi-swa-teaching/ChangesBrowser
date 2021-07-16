assertions
assertCorrectPickedAttributes: aText

	self
		assert: (aText find: TextEmphasis struckOut) isNil;
		assert: (aText find: TextEmphasis italic) isNil