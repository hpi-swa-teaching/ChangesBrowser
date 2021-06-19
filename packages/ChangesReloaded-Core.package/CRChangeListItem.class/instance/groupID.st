accessing
groupID

	self isMethod ifTrue: [^ {#method. self methodClassName. self methodSelector}].
	^ nil