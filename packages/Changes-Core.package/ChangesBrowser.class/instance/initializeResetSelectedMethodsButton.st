initialization
initializeResetSelectedMethodsButton

	self
		connect: self ui restoreSelectedMethodsButton
		signal: #clicked:
		to: self
		selector: #resetSelectedMethods