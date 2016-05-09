initialization
initializeBrowseCurrentButton

	"self ui browseCurrentButton
		color: Color lightBlue;
		label: 'Browse';
		target: self;
		actionSelector: #browseCurrentlySelectedChangeFile."
	self connect: (self ui browseCurrentButton) signal: #clicked: to: self selector: #browseCurrentlySelectedChangeFile.