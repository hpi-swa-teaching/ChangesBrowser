toolbuilder
buildPanelSpecWith: aBuilder andChildren: aCollectionOfSpecs

	^ aBuilder pluggablePanelSpec new
		 model: self;
		 layout: #horizontal;
		 children: aCollectionOfSpecs asOrderedCollection