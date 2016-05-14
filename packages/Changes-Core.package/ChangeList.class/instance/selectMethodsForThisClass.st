menu actions
selectMethodsForThisClass
	self currentChange ifNil: [ ^self ].
	self currentChange methodClassName ifNotNil:
		[:name|
		self selectSuchThat:
			(Sensor leftShiftDown
				ifTrue: [[:change :index| (self listSelections at: index) or: [change methodClassName = name]]]
				ifFalse: [[:change| change methodClassName = name]])]