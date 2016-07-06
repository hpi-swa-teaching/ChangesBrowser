testing-constants
testDeletedClassIdentifierFor

	self
		assert: (CHBrowser deletedClassIdentifierFor: 'ChangesBrowser') equals: 'Smalltalk removeClassNamed: #ChangesBrowser';
		assert: (CHBrowser deletedClassIdentifierFor: 'ExampleClass') equals: 'Smalltalk removeClassNamed: #ExampleClass';
		deny: ((CHBrowser deletedClassIdentifierFor: 'ExampleClass') = 'Smalltalk removeClassNamed: #ChangesBrowser').