initialization
newForChangesBrowser: aChangesBrowser

	| instance |
	instance := self basicNew.
	instance 
		changesBrowser: aChangesBrowser;
		initialize.
	^ instance