window color
windowColorSpecification
	"Answer a WindowColorSpec object that declares my preference"

	^ WindowColorSpec classSymbol: self name  wording: 'Change List' brightColor: #lightBlue pastelColor: #paleBlue helpMessage: 'A tool that presents a list of all the changes found in an external file.'