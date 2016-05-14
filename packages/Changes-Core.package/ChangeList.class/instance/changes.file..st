accessing
changes: changeRecords file: aFile

	self file: aFile.
	self changeList: OrderedCollection new.
	self list: OrderedCollection new.
	self listIndex: 0.
	changeRecords do: [:each |
		(each respondsTo: #methodClass)
			ifFalse: [self addItem: ChangeRecord new text: each asString]
			ifTrue:
				[self addItem: each text: ('method: ' , each methodClass name , (each isMetaClassChange ifTrue: [' class '] ifFalse: [' '])
					, each methodSelector
					, '; ' , each stamp)]].
	self listSelections: (Array new: self list size withAll: false)