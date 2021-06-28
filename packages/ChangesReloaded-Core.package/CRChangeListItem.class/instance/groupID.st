accessing
groupID

	self isMethod ifTrue: [^ {#method. self attributes at: #class. self attributes at: #method}].
	^ nil