initialization
initializeCloseButton

	self ui CloseButton
		label: 'Close';
		color: Color gray;
		target: self;
		actionSelector: #delete.