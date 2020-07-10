accessing
className

	self isMethod ifTrue: [^ self methodClassName].
	self isClassComment ifTrue: [^ self commentClass name].
	^ 'undefined'