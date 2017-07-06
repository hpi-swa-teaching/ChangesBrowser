testing-constants
testClassDefinitionIdentifierFor

	self
		assert: ('SuperClass subclass: #SubClass' includesSubstring: (CHBrowser classDefinitionIdentifierFor: 'SubClass'));
		assert: ('CodeHolder subclass: #ChangesBrowser' includesSubstring: (CHBrowser classDefinitionIdentifierFor: 'ChangesBrowser'));
		assert: ('ExampleClass subclass: #ChangesBrowser' includesSubstring: (CHBrowser classDefinitionIdentifierFor: 'ChangesBrowser'));
		deny: ('SuperClass subclass: #SubClass' includesSubstring: (CHBrowser classDefinitionIdentifierFor: 'ChangesBrowser'))