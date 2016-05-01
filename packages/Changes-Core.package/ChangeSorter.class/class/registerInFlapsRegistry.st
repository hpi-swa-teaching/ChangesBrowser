deprecated
registerInFlapsRegistry
	"Register the receiver in the system's flaps registry"
	self environment
		at: #Flaps
		ifPresent: [:cl | cl registerQuad: #(ChangeSorter			prototypicalToolWindow		'Change Set'			'A tool that allows you to view and manipulate all the code changes in a single change set')
						forFlapNamed: 'Tools']