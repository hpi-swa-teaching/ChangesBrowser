testing-constants
testDeletedClassIdentifierFor

	self
		assert: (CHBrowserLogic deletedClassIdentifierFor: 'ChangesBrowser') equals: 'Smalltalk removeClassNamed: #ChangesBrowser';
		assert: (CHBrowserLogic deletedClassIdentifierFor: 'ExampleClass') equals: 'Smalltalk removeClassNamed: #ExampleClass';
		deny: ((CHBrowserLogic deletedClassIdentifierFor: 'ExampleClass') = 'Smalltalk removeClassNamed: #ChangesBrowser')