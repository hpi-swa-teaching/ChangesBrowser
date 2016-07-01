testing-constants
testClassDefinitionIdentifierFor

	self
		assert: ('SuperClass subclass: #SubClass' includesSubstring: (ChangesBrowser ClassDefinitionIdentifierFor: 'SubClass'));
		assert: ('CodeHolder subclass: #ChangesBrowser' includesSubstring: (ChangesBrowser ClassDefinitionIdentifierFor: 'ChangesBrowser'));
		assert: ('ExampleClass subclass: #ChangesBrowser' includesSubstring: (ChangesBrowser ClassDefinitionIdentifierFor: 'ChangesBrowser'));
		deny: ('SuperClass subclass: #SubClass' includesSubstring: (ChangesBrowser ClassDefinitionIdentifierFor: 'ChangesBrowser')).