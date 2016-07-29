overwriting
skipSeparators
	[(self peek isNil not) and: [self peek isSeparator]] whileTrue: [self next].