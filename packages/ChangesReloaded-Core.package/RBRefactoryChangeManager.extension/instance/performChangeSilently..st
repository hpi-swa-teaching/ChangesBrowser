*ChangesReloaded-Core
performChangeSilently: aRefactoringChange
	self ignoreChangesWhile: [ self addUndo: aRefactoringChange executeSilently ]