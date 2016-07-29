resetting
resetAddedClasses: aSetOfAddedClasses

	aSetOfAddedClasses
		do: [:aClass | Smalltalk removeClassNamed: aClass].