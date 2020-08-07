toolbuilder
buildButtonSpecWith: aBuilder label: aStringOrSymbol action: aSymbol help: aString enabled: aBoolean

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: aStringOrSymbol;
		action: aSymbol;
		help: aString;
		enabled: aBoolean;
		yourself