testing-constants
testClassDefinitionIdentifierFor

	self
		assert: ('SuperClass subclass: #SubClass' includesSubstring: (CHBrowserLogic classDefinitionIdentifierFor: 'SubClass'));
		assert: ('CodeHolder subclass: #ChangesBrowser' includesSubstring: (CHBrowserLogic classDefinitionIdentifierFor: 'ChangesBrowser'));
		assert: ('ExampleClass subclass: #ChangesBrowser' includesSubstring: (CHBrowserLogic classDefinitionIdentifierFor: 'ChangesBrowser'));
		deny: ('SuperClass subclass: #SubClass' includesSubstring: (CHBrowserLogic classDefinitionIdentifierFor: 'ChangesBrowser'))