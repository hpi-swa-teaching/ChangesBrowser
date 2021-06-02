accessing
description

	| plainDescription |	
	plainDescription := (CRChangeRecordDescriber descriptionFor: self) asText.
	self isPicked ifFalse: [self addUnpickedAttributes: plainDescription].
	^ plainDescription