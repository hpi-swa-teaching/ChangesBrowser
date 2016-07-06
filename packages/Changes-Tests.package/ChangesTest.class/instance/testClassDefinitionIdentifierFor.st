testing-constants
testClassDefinitionIdentifierFor

	self
		assert: ('SuperClass subclass: #SubClass' includesSubstring: (CHBrowser ClassDefinitionIdentifierFor: 'SubClass'));
		assert: ('CodeHolder subclass: #ChangesBrowser' includesSubstring: (CHBrowser ClassDefinitionIdentifierFor: 'ChangesBrowser'));
		assert: ('ExampleClass subclass: #ChangesBrowser' includesSubstring: (CHBrowser ClassDefinitionIdentifierFor: 'ChangesBrowser'));
		deny: ('SuperClass subclass: #SubClass' includesSubstring: (CHBrowser ClassDefinitionIdentifierFor: 'ChangesBrowser')).