initialization
initializeResetToVersionPushButton

	self
		connect: self ui resetToVersionPushButton
		signal: #clicked:
		to: self
		selector: #resetToSelectedVersion