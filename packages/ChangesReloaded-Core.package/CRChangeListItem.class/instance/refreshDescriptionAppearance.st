text-attributes
refreshDescriptionAppearance

	self isPicked 
		ifTrue: [self showDescriptionAsPicked]
		ifFalse: [self showDescriptionAsUnpicked]