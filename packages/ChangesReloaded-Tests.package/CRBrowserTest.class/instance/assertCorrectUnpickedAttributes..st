assertions
assertCorrectUnpickedAttributes: aText

	self
		assert: (aText find: TextEmphasis struckOut) = (1 to: aText size);
		assert: (aText find: TextEmphasis italic) = (1 to: aText size)