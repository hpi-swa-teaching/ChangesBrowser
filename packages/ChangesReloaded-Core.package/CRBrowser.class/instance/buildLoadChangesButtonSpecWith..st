buttons
buildLoadChangesButtonSpecWith: aBuilder

	^ self buildButtonSpecWith: aBuilder
			label: #loadButtonLabel
			action: #loadPickedChanges
			help: 'Load the picked changes into this image'
			enabled: #isLoadButtonEnabled