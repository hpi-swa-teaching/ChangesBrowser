testing-constants
testClassClassificationBeginFor

	self
		assert: (CHBrowserLogic classClassificationBeginFor: 'ChangesBrowser') equals: 'SystemOrganization classify: #ChangesBrowser';
		assert: (CHBrowserLogic classClassificationBeginFor: 'ExampleClass') equals: 'SystemOrganization classify: #ExampleClass';
		deny: ((CHBrowserLogic classClassificationBeginFor: 'ExampleClass') = 'SystemOrganization classify: #ChangesBrowser').