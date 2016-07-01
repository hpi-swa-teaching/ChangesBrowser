testing-constants
testClassClassificationBeginFor

	self
		assert: (ChangesBrowser ClassClassificationBeginFor: 'ChangesBrowser') equals: 'SystemOrganization classify: #ChangesBrowser';
		assert: (ChangesBrowser ClassClassificationBeginFor: 'ExampleClass') equals: 'SystemOrganization classify: #ExampleClass';
		deny: ((ChangesBrowser ClassClassificationBeginFor: 'ExampleClass') = 'SystemOrganization classify: #ChangesBrowser').