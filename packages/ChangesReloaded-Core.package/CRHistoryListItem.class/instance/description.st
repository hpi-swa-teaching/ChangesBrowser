accessing
description

	| description prefix |
	prefix := self hasSelectedChangeListItem
		ifTrue: [| indexOfSelectedChangeListItem |
			indexOfSelectedChangeListItem := self history indexOf: self selectedChangeListItems first.
			indexOfSelectedChangeListItem > 1
				ifTrue: [(indexOfSelectedChangeListItem - 1) asString , ' omitted:']
				ifFalse: ['Latest:']]
		ifFalse: ['Ignored:'].
	description := self classNameOfChanges , ' ' , self selector.
	^ prefix , ' ' , description