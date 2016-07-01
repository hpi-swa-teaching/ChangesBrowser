testing-constants
testDeletedClassIdentifierFor

	self
		assert: (ChangesBrowser deletedClassIdentifierFor: 'ChangesBrowser') equals: 'Smalltalk removeClassNamed: #ChangesBrowser';
		assert: (ChangesBrowser deletedClassIdentifierFor: 'ExampleClass') equals: 'Smalltalk removeClassNamed: #ExampleClass';
		deny: ((ChangesBrowser deletedClassIdentifierFor: 'ExampleClass') = 'Smalltalk removeClassNamed: #ChangesBrowser').