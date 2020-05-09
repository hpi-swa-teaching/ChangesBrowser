building
createWindowSpecWith: aBuilder

	| windowSpec |
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Changes Browser';
		extent: self extent;
		"closeAction: self delete;"
		yourself.
	^ windowSpec