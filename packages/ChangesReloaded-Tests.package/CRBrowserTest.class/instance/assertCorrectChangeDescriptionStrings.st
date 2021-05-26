assertions
assertCorrectChangeDescriptionStrings

	self assert: (self changesBrowser changeDescriptions =
		#('classComment: CRChangesDummyClass2 nil sv 26/7/2020 14:00'
		    'method: CRChangesDummyClass functionOrder4 ug 21/6/2020 15:53'
		    'method: CRChangesDummyClass functionOrder3 ug 21/6/2020 15:53'
		    'method: CRChangesDummyClass functionOrder1 ug 21/6/2020 15:52'
		    'method: CRChangesDummyClass functionOrder3 ug 21/6/2020 15:52'
		    'method: CRChangesDummyClass functionOrder2 ug 21/6/2020 15:52'
		    'method: CRChangesDummyClass functionOrder1 ug 21/6/2020 15:51'
		    'classComment: CRChangesDummyClass nil ug 21/6/2020 15:51'
		    'method: CRChangesDummyClass functionOrder1 ug 21/6/2020 15:51') asOrderedCollection)