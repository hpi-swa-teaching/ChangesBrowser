building
excludeIncludeButton
	"TODO: way to get the button properly"
	
	^ self model submorphs select: [:each | each actionSelector == #toggleExcludeInclude]