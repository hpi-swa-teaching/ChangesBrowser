window color
windowColorSpecification
	"Answer a WindowColorSpec object that declares my preference"

	^ WindowColorSpec classSymbol: self name  wording: 'Change Sorter' brightColor: #lightBlue pastelColor: #paleBlue helpMessage: 'A tool that lets you see the code for one change set at a time.'