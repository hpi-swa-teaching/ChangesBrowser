toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Changes Browser Reloaded';
		extent: self extent;
		children: (Set new
			add: ((self buildButtonPanelSpecWith: aBuilder)
				frame: self buttonsFrame;
				yourself);
			add: ((self buildChangeListSpecWith: aBuilder)
				frame: self changeListFrame;
				yourself);
			yourself);
		yourself)