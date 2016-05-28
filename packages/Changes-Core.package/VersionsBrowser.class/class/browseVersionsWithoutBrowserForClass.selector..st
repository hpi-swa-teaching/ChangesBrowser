instance creation
browseVersionsWithoutBrowserForClass: aClass selector: aSelector
	^self
		browseVersionsWithoutBrowserOf: (aClass compiledMethodAt: aSelector)
		class: aClass
		meta: aClass isMeta
		category: (aClass organization categoryOfElement: aSelector)
		selector: aSelector