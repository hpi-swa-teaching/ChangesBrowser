instance creation
versionsForSelector: aSelector class: aClass 

	| method |
	method := aClass compiledMethodAt: aSelector ifAbsent: [^ 0].
	^ self
		browseVersionsWithoutBrowserOf: method
		class: aClass
		meta: aClass isMeta
		category: (aClass organization categoryOfElement: aSelector)
		selector: aSelector
		lostMethodPointer: nil