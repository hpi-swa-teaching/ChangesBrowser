accessing
description

	| plainDescription |
	plainDescription := self type , ': ' , self nameOfAffectedClass , ' ' , self methodSelector , ' ' , self stamp.
	self isPicked 
		ifTrue: [^ plainDescription]
		ifFalse: [^ '(' , plainDescription , ')'] 