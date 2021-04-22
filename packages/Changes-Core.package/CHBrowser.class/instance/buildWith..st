building
buildWith: aBuilder

	| window |
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Changes Browser';
		extent: self extent;
		closeAction: #delete;
		children: (OrderedCollection new
			add: ((self buildVersionListWith: aBuilder)
				frame: self versionListFrame;
				yourself);
			add: ((self buildChangeListWith: aBuilder)
				frame: self historyListFrame;
				yourself);
			add: ((self buildButtonsWith: aBuilder)
				frame: self buttonsFrame;
				yourself);
			add: ((self buildCodePaneWith: aBuilder)
				frame: self methodWindowFrame;
				yourself);
			yourself);
		yourself.
	^ aBuilder build: window 