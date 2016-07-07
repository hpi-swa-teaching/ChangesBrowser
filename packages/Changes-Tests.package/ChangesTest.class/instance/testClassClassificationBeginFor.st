testing-constants
testClassClassificationBeginFor

	self
		assert: (CHBrowserLogic ClassClassificationBeginFor: 'ChangesBrowser') equals: 'SystemOrganization classify: #ChangesBrowser';
		assert: (CHBrowserLogic ClassClassificationBeginFor: 'ExampleClass') equals: 'SystemOrganization classify: #ExampleClass';
		deny: ((CHBrowserLogic ClassClassificationBeginFor: 'ExampleClass') = 'SystemOrganization classify: #ChangesBrowser').