building
buildButtonPanelSpecWith: aBuilder andPropsArray: anArray

	^ aBuilder pluggablePanelSpec new
		 model: self;
		 layout: #horizontal;
		 children: (self buildButtonArraySpecsWith: aBuilder andPropsArray: anArray)