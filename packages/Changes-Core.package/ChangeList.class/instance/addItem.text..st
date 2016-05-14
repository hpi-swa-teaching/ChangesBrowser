initialization-release
addItem: item text: text

	| cr |
	cr := Character cr.
	self changeList addLast: item.
	self list addLast: (text collect: [:x | x = cr ifTrue: [$/] ifFalse: [x]])