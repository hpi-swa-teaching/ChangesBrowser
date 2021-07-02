toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Changes Browser Reloaded';
		extent: self class extent;
		children: (Set new
			add: ((self buildUpperButtonPanelSpecWith: aBuilder)
				frame: self upperButtonsFrame;
				yourself);
			add: ((self buildGroupListSpecWith: aBuilder)
				frame: self groupListFrame;
				yourself);
			add: ((self buildVersionListSpecWith: aBuilder)
				frame: self versionListFrame;
				yourself);
			add: ((self buildPickButtonSpecWith: aBuilder)
				frame: self pickButtonFrame;
				yourself);
			add: ((self buildCodePaneWith: aBuilder)
				frame: self codePaneFrame;
				yourself);
			yourself);
		yourself)