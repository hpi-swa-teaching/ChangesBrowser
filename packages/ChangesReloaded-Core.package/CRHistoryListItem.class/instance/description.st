accessing
description

	| description numberOfSelectedChangeListItems numberOfChangeListItems prefix |
	description := self class name , ' ' , self selector.
	numberOfSelectedChangeListItems := (self history select: [:each | each isSelected]) size.
	numberOfChangeListItems := self history size.
	numberOfSelectedChangeListItems = numberOfChangeListItems
		ifFalse: [prefix := '[' , numberOfSelectedChangeListItems , '/' , numberOfChangeListItems , ']']
		ifTrue: [prefix := '[all]'].
	^ prefix , ' ' , description