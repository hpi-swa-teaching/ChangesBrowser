testing
testMethodRenaming

	self assert: (CRChangesDummyClass includesSelector: self oldMethod) not.
	self assert: (CRChangesDummyClass includesSelector: self newMethod).
	
	self	assert:  'methodWithRenamedMethod
	self renamedMethod'
		equals: (CRChangesDummyClass sourceCodeAt: #methodWithRenamedMethod).