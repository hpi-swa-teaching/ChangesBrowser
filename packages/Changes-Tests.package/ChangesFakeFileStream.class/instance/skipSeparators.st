overwriting
skipSeparators
	self peek ifNotNil: [ self next isSeparator ifTrue: [ self skipSeparators ].]