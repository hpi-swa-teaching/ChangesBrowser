building
createWindowSpecWith: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'Changes Browser';
		extent: self extent;
		yourself