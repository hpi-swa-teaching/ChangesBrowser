running
setUp

	SystemChangeNotifier uniqueInstance doSilently: [(RBRenameMethodRefactoring
		renameMethod: self oldMethod
		in: CRChangesDummyClass
		to: self newMethod
		permutation: #()) execute]