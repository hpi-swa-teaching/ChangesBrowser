accessing
description

	| plainDescription |
	plainDescription := self className , ' ' , self methodSelector , ' ' , self stamp.
	self isIncluded 
		ifTrue: [^ plainDescription]
		ifFalse: [^ '(' , plainDescription , ')'] 