accessing
description

	| plainDescription |
	plainDescription := self nameOfAffectedClass , ' ' , self methodSelector , ' ' , self stamp.
	self isPicked 
		ifTrue: [^ plainDescription]
		ifFalse: [^ '(' , plainDescription , ')'] 