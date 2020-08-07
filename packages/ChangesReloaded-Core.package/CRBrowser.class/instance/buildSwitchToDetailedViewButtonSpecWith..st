buttons
buildSwitchToDetailedViewButtonSpecWith: aBuilder

	^ self buildButtonSpecWith: aBuilder
			label: 'Switch to detailed view'
			action: #switchToDetailedView
			help: 'Switch to a more detailed version of this window with more functionality'
			enabled: true