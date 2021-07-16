running
tearDown

	SystemChangeNotifier uniqueInstance doSilently: [(RBRenameMethodRefactoring
		renameMethod: self newMethod
		in: CRChangesDummyClass
		to: self oldMethod
		permutation: #()) execute]