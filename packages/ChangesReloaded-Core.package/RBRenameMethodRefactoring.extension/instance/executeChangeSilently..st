*ChangesReloaded-Core
executeChangeSilently: aRefactoringChange
	"AddMethodChange works independantly from SystemChangeNotifier. doSilently: [] doesn't work with it"
	
	aRefactoringChange class = RBAddMethodChange
		ifTrue: [	aRefactoringChange primitiveExecuteSilently]
		ifFalse: [SystemChangeNotifier uniqueInstance doSilently: [aRefactoringChange primitiveExecute]].