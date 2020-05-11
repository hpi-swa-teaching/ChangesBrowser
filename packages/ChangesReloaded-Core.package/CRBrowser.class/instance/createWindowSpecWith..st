building
createWindowSpecWith: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'Changes Browser Reloaded';
		extent: self extent;
		yourself