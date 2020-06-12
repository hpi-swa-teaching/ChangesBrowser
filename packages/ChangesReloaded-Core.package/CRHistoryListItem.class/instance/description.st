accessing
description

	| description numberOfSelectedChangeListItems |
	description := self selector.
	numberOfSelectedChangeListItems := (self history select: [:each | each isSelected]) size.
	numberOfSelectedChangeListItems > 0
		ifTrue: [description := '[' , numberOfSelectedChangeListItems , '] ' , description].
	^ description