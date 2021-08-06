testing
hasPickedAttributes: aText
	
	^ (CRBrowser pickedAttributes allSatisfy: [:attribute | (aText find: attribute) = (1 to: aText size)])
	and: [CRBrowser unpickedAttributes allSatisfy: [:attribute | (aText find: attribute) isNil]]