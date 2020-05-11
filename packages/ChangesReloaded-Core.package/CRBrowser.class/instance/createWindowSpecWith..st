building
createWindowSpecWith: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'Changes Browser Reloaded';
		extent: self extent;
		children: (Set new
			add: ((self buildButtonsWith: aBuilder)
				frame: self buttonsFrame;
				yourself);
			add: ((self buildChangeListWith: aBuilder)
				frame: self changeListFrame;
				yourself);
			yourself);
		yourself