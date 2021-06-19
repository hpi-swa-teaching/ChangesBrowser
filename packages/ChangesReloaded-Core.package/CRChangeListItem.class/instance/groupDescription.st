accessing
groupDescription

	self isMethod ifTrue: [^ self methodClassName, '>>' , self methodSelector].
	^ self description