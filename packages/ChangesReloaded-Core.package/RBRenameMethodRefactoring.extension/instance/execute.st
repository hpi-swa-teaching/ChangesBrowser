*ChangesReloaded-Core
execute
	
	| undos mainUndo undo |
	
	self primitiveExecute.
	undos := self changes changes collect: [ :each |
				undo := each asUndoOperation.
				undo name: each name.
				self executeChangeSilently: each.
				undo].
	mainUndo := self changes copy.
	mainUndo changes: undos reversed.
	RBRefactoryChangeManager instance ignoreChangesWhile: [ RBRefactoryChangeManager instance addUndo: mainUndo ].
	RBRefactoringManager instance refactorings add: self class name.
			
	SystemChangeNotifier uniqueInstance methodRenamedIn: class from: oldSelector to: newSelector withPermutation: permutation