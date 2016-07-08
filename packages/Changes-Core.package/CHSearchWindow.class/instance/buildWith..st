building
buildWith: aBuilder
	|windowSpec|
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Enter a String';
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