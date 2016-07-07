testing-constants
testClassDefinitionIdentifierFor

	self
		assert: ('SuperClass subclass: #SubClass' includesSubstring: (CHBrowserLogic ClassDefinitionIdentifierFor: 'SubClass'));
		assert: ('CodeHolder subclass: #ChangesBrowser' includesSubstring: (CHBrowserLogic ClassDefinitionIdentifierFor: 'ChangesBrowser'));
		assert: ('ExampleClass subclass: #ChangesBrowser' includesSubstring: (CHBrowserLogic ClassDefinitionIdentifierFor: 'ChangesBrowser'));
		deny: ('SuperClass subclass: #SubClass' includesSubstring: (CHBrowserLogic ClassDefinitionIdentifierFor: 'ChangesBrowser')).