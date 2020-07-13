accessing
description

	| plainDescription |
	plainDescription := self nameOfAffectedClass , ' ' , self methodSelector , ' ' , self stamp.
	self isIncluded 
		ifTrue: [^ plainDescription]
		ifFalse: [^ '(' , plainDescription , ')'] 