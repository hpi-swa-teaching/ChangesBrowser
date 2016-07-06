testing-constants
testClassClassificationBeginFor

	self
		assert: (CHBrowser ClassClassificationBeginFor: 'ChangesBrowser') equals: 'SystemOrganization classify: #ChangesBrowser';
		assert: (CHBrowser ClassClassificationBeginFor: 'ExampleClass') equals: 'SystemOrganization classify: #ExampleClass';
		deny: ((CHBrowser ClassClassificationBeginFor: 'ExampleClass') = 'SystemOrganization classify: #ChangesBrowser').