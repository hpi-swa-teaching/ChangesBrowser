accessing
pickButton
	"TODO: way to get the button properly"
	
	| browserWindow buttons |
	browserWindow := self dependents detect: [:each | each isKindOf: PluggableSystemWindow].
	buttons := browserWindow submorphs 
		select: [:each | each isKindOf: PluggableButtonMorphPlus].
	
	^ buttons detect: [:each | each actionSelector == #togglePickStatus]