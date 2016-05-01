window color
windowColorSpecification
	"Answer a WindowColorSpec object that declares my preference"

	^ WindowColorSpec classSymbol: self name  wording: 'Dual Change Sorter' brightColor: #lightBlue pastelColor: #paleBlue helpMessage: 'Lets you view and manipulate two change sets concurrently.'