initialization
initializeOneClickResetButton

	self
		connect: self ui oneClickResetButton
		signal: #clicked:
		to: self
		selector: #resetToLastVersion