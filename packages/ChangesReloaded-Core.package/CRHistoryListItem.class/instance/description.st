accessing
description

	"TODO: [ignore] if no change should be loaded, [latest] if latest change should be loaded, [X omitted] otherwise"
	| description indexOfSelectedChangeListItems numberOfChangeListItems prefix |
	description := self className , ' ' , self selector.
	indexOfSelectedChangeListItems := (self history select: [:each | each isSelected]) size.
	numberOfChangeListItems := self history size.
	indexOfSelectedChangeListItems = numberOfChangeListItems
		ifFalse: [prefix := '[' , indexOfSelectedChangeListItems , '/' , numberOfChangeListItems , ']']
		ifTrue: [prefix := '[all]'].
	^ prefix , ' ' , description