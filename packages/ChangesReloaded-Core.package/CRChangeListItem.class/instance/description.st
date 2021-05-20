accessing
description

	| plainDescription |
	plainDescription := (self nameOfAffectedClass , ' ' , self methodSelector , ' ' , self stamp) asText.
	self isPicked ifFalse: [self addUnpickedAttributes: plainDescription].
	^ plainDescription