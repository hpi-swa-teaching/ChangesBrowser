buttons
buildPickButtonSpecWith: aBuilder

	^ self buildButtonSpecWith: aBuilder
		label: #pickButtonLabel
		action: #pickButtonClicked
		help: 'Pick or unpick changes for loading or not loading them into the image'
		enabled: #isPickButtonEnabled