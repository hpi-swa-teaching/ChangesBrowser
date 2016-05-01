changeSet menu
removeContainedInClassCategories
	| matchExpression |
	myChangeSet removePreamble.
	matchExpression :=  UIManager default request: 'Enter class category name (wildcard is ok)' initialAnswer: 'System-*'. 
	(Smalltalk organization categories
		select: [:each | matchExpression match: each])
		do: [:eachCat | 
			| classNames | 
			classNames := Smalltalk organization listAtCategoryNamed: eachCat.
			classNames
				do: [:eachClassName | 
					myChangeSet removeClassChanges: eachClassName.
					myChangeSet removeClassChanges: eachClassName , ' class'].
			self showChangeSet: myChangeSet]