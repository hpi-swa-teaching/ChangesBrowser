*ChangesReloaded-Core
execute

	SystemChangeNotifier uniqueInstance 	
		doSilently: [1 setHaltOnce. super execute];
		methodRenamedIn: class from: oldSelector to: newSelector withPermutation: permutation