*ChangesReloaded-Core
renameMethodRefactoring
	| method class oldArguments oldMethodName newMethodName argumentPermutation|
	method := self selectedMessageName.
	class := self selectedClass.
	
	SystemChangeNotifier uniqueInstance trigger: (DoItEvent expression: 'Rename Method' context: '').
	
	oldArguments := (RBParser parseMethod: (class methodHeaderFor: method)) argumentNames.
	oldMethodName := RBMethodName 
		selector: method
		arguments: oldArguments.
	(newMethodName := self requestMethodNameFor: oldMethodName) ifNil: [ ^ nil ].
	argumentPermutation := newMethodName arguments collect: [ :each | oldArguments indexOf: each ].
	^RBRenameMethodRefactoring
		renameMethod: method
		in: class
		to: newMethodName selector
		permutation: argumentPermutation