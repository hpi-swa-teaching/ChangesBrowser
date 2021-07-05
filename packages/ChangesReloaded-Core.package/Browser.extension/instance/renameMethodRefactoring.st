*ChangesReloaded-Core
renameMethodRefactoring
	| method class oldArguments oldMethodName newMethodName argumentPermutation|
	method := self selectedMessageName.
	class := self selectedClass.
	oldArguments := (RBParser parseMethod: (class methodHeaderFor: method)) argumentNames.
	oldMethodName := RBMethodName 
		selector: method
		arguments: oldArguments.
	(newMethodName := self requestMethodNameFor: oldMethodName) ifNil: [ ^ nil ].
	argumentPermutation := newMethodName arguments collect: [ :each | oldArguments indexOf: each ].
	
	self registerMethodRenamedIn: class from: oldMethodName to: newMethodName.
	
	^RBRenameMethodRefactoring
		renameMethod: method
		in: class
		to: newMethodName selector
		permutation: argumentPermutation