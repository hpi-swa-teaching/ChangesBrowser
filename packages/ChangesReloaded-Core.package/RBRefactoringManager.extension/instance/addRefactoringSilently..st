*ChangesReloaded-Core
addRefactoringSilently: aRefactoring 
	RBRefactoryChangeManager instance performChangeSilently: aRefactoring changes.
	refactorings add: aRefactoring class name