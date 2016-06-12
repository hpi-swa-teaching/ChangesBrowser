building
buildWith: aBuilder
	|windowSpec|
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Choose a time';
		extent: self extent;
		children: (OrderedCollection new
			add: ((self buildInputFieldWith: aBuilder)
				frame: self inputFieldFrame;
				yourself);
			add: ((self buildButtonsWith: aBuilder)
				frame: self buttonsFrame;
				yourself);
			yourself);
		yourself.
	self window: (aBuilder build: windowSpec).
	^ self window.