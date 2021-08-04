building
buildWith: aBuilder

	| pluggableWindow |
	pluggableWindow := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Recover unsnapshoted changes';
		extent: self extent;
		children: (OrderedCollection new
			add: ((self buildButtonsWith: aBuilder)
				frame: self buttonsFrame;
				yourself);
			yourself);
		yourself.
		self window: (aBuilder build: pluggableWindow).
	^ self window