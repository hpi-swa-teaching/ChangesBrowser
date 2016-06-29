constants
deletedClassRegexFor: aClassName
	^ 'Smalltalk removeClassNamed\: #', aClassName, '([\w]|[\W])*'