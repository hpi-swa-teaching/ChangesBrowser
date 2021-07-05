utils
encapsulateMethodRenamedFrom: changeListItems
	
	| index newChangeListItems inseparableChangeListItems |
	
	newChangeListItems := OrderedCollection new.
	index := changeListItems size.
	
	[index > 0] whileTrue: [
		(changeListItems at: index) category = #methodRenamed
			ifTrue: [
				inseparableChangeListItems := {changeListItems at: index} asOrderedCollection.
				index := index - 1.
				[(changeListItems at: index) category = #methodRemoved] whileFalse: [
					inseparableChangeListItems add: (changeListItems at: index).
					index := index - 1.
				].
				inseparableChangeListItems add: (changeListItems at: index).
				newChangeListItems add: (CRComplexChangeListItem newMethodRenamedOf: inseparableChangeListItems first with: inseparableChangeListItems copyWithoutFirst).
			]
		ifFalse: [newChangeListItems add: (changeListItems at: index)].
		index := index - 1.
	].
	
	^ newChangeListItems reverse