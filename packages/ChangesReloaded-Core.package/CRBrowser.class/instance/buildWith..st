toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Changes Browser Reloaded';
		extent: CRBrowser extent;
		children: (Set new
			add: ((self buildButtonPanelSpecWith: aBuilder andPropsArray: self upperButtonProps)
				frame: self upperButtonsFrame;
				yourself);
			add: ((self buildChangeListSpecWith: aBuilder)
				frame: self changeListFrame;
				yourself);
			add: ((self buildButtonSpecWith: aBuilder andProps: self pickButtonProps)
				frame: self pickButtonFrame;
				yourself);
			add: ((self buildCodePaneWith: aBuilder)
				frame: self codePaneFrame;
				yourself);
			yourself);
		yourself)