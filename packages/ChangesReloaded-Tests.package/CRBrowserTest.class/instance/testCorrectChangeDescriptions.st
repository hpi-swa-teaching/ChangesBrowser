testing-functionality
testCorrectChangeDescriptions
	
	self assertCorrectChangeDescriptionStrings.
	self changesBrowser changeDescriptions do: [:aText |
		self
			assert: (aText find: TextEmphasis struckOut) = (1 to: aText size);
			assert: (aText find: TextEmphasis italic) = (1 to: aText size)].
	
	self changesBrowser changeListItems do: [:each | each pick].
	
	self assertCorrectChangeDescriptionStrings.
	self changesBrowser changeDescriptions do: [:aText |
		self
			assert: (aText find: TextEmphasis struckOut) isNil;
			assert: (aText find: TextEmphasis italic) isNil]