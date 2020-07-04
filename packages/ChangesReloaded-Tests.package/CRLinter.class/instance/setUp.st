running
setUp

	self classes: (OrderedCollection new
		addAll: self class crCorePackage classes;
		addAll: self class crTestsPackage classes;
		yourself)