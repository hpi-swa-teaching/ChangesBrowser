class initialization
registerInFlapsRegistry
	"Register the receiver in the system's flaps registry"
	self environment
		at: #Flaps
		ifPresent: [:cl | cl registerQuad: #(DualChangeSorter		prototypicalToolWindow		'Change Sorter'		'Shows two change sets side by side')
						forFlapNamed: 'Tools']