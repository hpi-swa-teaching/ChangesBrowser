building
buildButtonPanelSpecWith: aBuilder and: anArray

	^ aBuilder pluggablePanelSpec new
		 model: self;
		 layout: #horizontal;
		 children: (self buildButtonSpecsWith: aBuilder and: anArray)