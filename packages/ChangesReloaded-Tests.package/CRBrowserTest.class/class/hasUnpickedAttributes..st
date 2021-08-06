testing
hasUnpickedAttributes: aText

	^ (CRBrowser unpickedAttributes allSatisfy: [:attribute | (aText find: attribute) = (1 to: aText size)])
	and: [CRBrowser pickedAttributes allSatisfy: [:attribute | (aText find: attribute) isNil]]