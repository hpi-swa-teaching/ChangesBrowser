instance creation
versionsForSelector: aSelector class: aClass
	
	| method versionsBrowser |
	method := aClass compiledMethodAt: aSelector ifAbsent: [^ 0].
	versionsBrowser := self browseVersionsForClass: aClass selector: aSelector.
	^ versionsBrowser changeList