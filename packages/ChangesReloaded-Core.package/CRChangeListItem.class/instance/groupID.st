accessing
groupID
	
	"should return identifier of group if shouldBeGrouped returns true."
	self isMethod ifTrue: [^ {#method. self attributes at: #class. self attributes at: #method}].
	self isClassComment ifTrue: [^ {#classComment. self attributes at: #class}].