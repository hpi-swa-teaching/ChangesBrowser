triggering
logString

	^ '(RBRenameMethodRefactoring renameMethod: #{1} in: {2} to: #{3} permutation: #({4})) execute' 
		format: {self oldName. self item. self newName. self permutation joinSeparatedBy: ' '}