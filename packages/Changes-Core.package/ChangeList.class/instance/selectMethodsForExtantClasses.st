menu actions
selectMethodsForExtantClasses
	^self selectSuchThat:
		[ :change |
		Smalltalk hasClassNamed: change methodClassName]