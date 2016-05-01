window color
windowColorSpecification
	"Answer a WindowColorSpec object that declares my preference"

	^ WindowColorSpec classSymbol: self name wording: 'Versions Browser' brightColor: #(0.869 0.753 1.0)	pastelColor: #(0.919 0.853 1.0) helpMessage: 'A tool for viewing prior versions of a method.'