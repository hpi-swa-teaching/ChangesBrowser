accessing
loadButton
	"TODO: way to get the button properly"
	
	| browserWindow buttons |
	browserWindow := self dependents detect: [:each | each isKindOf: PluggableSystemWindow].
	buttons := ((browserWindow submorphs 
		select: [:each |
			(each isKindOf: PluggablePanelMorph) and: [
			(each submorphs size > 1) and: 
			(each submorphs first isKindOf: PluggableButtonMorphPlus)]])
		at: 1) 	submorphs.
	
	^ buttons detect: [:each | each actionSelector == #loadPickedChanges]