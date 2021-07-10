*ChangesReloaded-Core
execute

	SystemChangeNotifier uniqueInstance 	
		doSilently: [self primitiveExecute.
	RBRefactoringManager instance addRefactoringSilently: self];
		methodRenamedIn: class from: oldSelector to: newSelector withPermutation: permutation