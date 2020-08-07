toolbuilder
buildPanelSpecWith: aBuilder andChildren: anOrderedCollectionOfSpecs

	^ aBuilder pluggablePanelSpec new
		 model: self;
		 layout: #horizontal;
		 children: anOrderedCollectionOfSpecs