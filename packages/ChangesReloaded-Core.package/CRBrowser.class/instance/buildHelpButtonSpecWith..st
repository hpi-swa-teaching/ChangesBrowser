toolbuilder
buildHelpButtonSpecWith: aBuilder

	^ self buildButtonSpecWith: aBuilder
			label: 'How To'
			action: #openHelpPopUp
			help: 'Get Help how to use this tool'
			enabled: true