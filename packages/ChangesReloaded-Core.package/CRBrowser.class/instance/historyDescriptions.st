accessing
historyDescriptions

	| descriptions |
	descriptions := OrderedCollection new.
	self methodHistories keysAndValuesDo: [:key :value |
				| numberOfSelectedChangeListItems |
				numberOfSelectedChangeListItems := (value select: [:each | each isSelected]) size.
				numberOfSelectedChangeListItems > 0
					ifTrue: [descriptions add: '[' , numberOfSelectedChangeListItems , '] ' , key]
					ifFalse: [descriptions add: key]].
	^ descriptions