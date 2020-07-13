building
buildPickButtonSpecWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: self unpickButtonProps first;
		action: self unpickButtonProps second;
		help: self pickButtonTooltipText;
		yourself