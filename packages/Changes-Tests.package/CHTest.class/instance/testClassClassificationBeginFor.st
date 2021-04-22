testing-constants
testClassClassificationBeginFor

	self
		assert: (CHBrowser classClassificationBeginFor: 'ChangesBrowser') equals: 'SystemOrganization classify: #ChangesBrowser';
		assert: (CHBrowser classClassificationBeginFor: 'ExampleClass') equals: 'SystemOrganization classify: #ExampleClass';
		deny: ((CHBrowser classClassificationBeginFor: 'ExampleClass') = 'SystemOrganization classify: #ChangesBrowser')