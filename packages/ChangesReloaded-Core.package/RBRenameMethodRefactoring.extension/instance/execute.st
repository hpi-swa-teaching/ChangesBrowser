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
			
	SystemChangeNotifier uniqueInstance evaluated: ('(RBRenameMethodRefactoring renameMethod: #{1} in: {2} to: #{3} permutation: #({4})) execute' 
		format: {oldSelector. class. newSelector. permutation joinSeparatedBy: ' '}).