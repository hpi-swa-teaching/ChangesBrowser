buttons
buildUpperButtonPanelSpecWith: aBuilder

	^ self buildPanelSpecWith: aBuilder
			andChildren: (OrderedCollection new
				add: (self buildSwitchToDetailedViewButtonSpecWith: aBuilder);
				add: (self buildLoadChangesButtonSpecWith: aBuilder);
				yourself)