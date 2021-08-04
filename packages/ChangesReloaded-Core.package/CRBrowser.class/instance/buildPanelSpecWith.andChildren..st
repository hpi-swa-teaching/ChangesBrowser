toolbuilder
buildPanelSpecWith: aBuilder andChildren: anOrderedCollection

	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: anOrderedCollection;
		yourself