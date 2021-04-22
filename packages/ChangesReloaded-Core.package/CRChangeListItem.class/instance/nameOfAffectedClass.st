accessing
nameOfAffectedClass

	self isMethod ifTrue: [^ self methodClassName].
	self isClassComment ifTrue: [^ self commentClass name].
	^ nil