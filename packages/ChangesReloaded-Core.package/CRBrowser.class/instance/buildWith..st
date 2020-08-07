toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Changes Browser Reloaded';
		extent: self extent;
		children: (Set new
			add: ((self buildUpperButtonPanelSpecWith: aBuilder)
				frame: self upperButtonsFrame;
				yourself);
			add: ((self buildChangeListSpecWith: aBuilder)
				frame: self changeListFrame;
				yourself);
			add: ((self buildPickButtonSpecWith: aBuilder)
				frame: self pickButtonFrame;
				yourself);
			add: ((self buildCodePaneWith: aBuilder)
				frame: self codePaneFrame;
				yourself);
			yourself);
		yourself)