accessing
shouldSeparateGroup: aGroupID
	"return true if this changeListItem separates (splits) changeListItems with aGroupID into different groups."
	^ self category caseOf: {
		[#methodRemoved] -> [aGroupID first = #method
			and: [aGroupID second = (self attributes at: #class)]
			and: [aGroupID third = (self attributes at: #method)]].
		[#classRemoved] -> [aGroupID second = (self attributes at: #class)].
	} otherwise: [false]