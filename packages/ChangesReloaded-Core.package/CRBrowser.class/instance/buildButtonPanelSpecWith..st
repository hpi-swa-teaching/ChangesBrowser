toolbuilder
buildButtonPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (self buildButtonSpecsWith: aBuilder);
		yourself