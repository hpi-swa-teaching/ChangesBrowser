*ChangesReloaded-Core
methodRenamedIn: aClass from: anOldName to: aNewName withPermutation: aPermutation
	
	self	evaluated: ('(RBRenameMethodRefactoring renameMethod: #{1} in: {2} to: #{3} permutation: #({4})) execute' 					format: {anOldName. aClass. aNewName. aPermutation joinSeparatedBy: ' '})