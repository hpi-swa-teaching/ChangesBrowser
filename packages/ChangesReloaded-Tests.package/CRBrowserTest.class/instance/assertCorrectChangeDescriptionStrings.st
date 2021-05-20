assertions
assertCorrectChangeDescriptionStrings

	self assert: (self changesBrowser changeDescriptions =
		#('CRChangesDummyClass2 nil sv 26/7/2020 14:00'
		    'CRChangesDummyClass functionOrder4 ug 21/6/2020 15:53'
		    'CRChangesDummyClass functionOrder3 ug 21/6/2020 15:53'
		    'CRChangesDummyClass functionOrder1 ug 21/6/2020 15:52'
		    'CRChangesDummyClass functionOrder3 ug 21/6/2020 15:52'
		    'CRChangesDummyClass functionOrder2 ug 21/6/2020 15:52'
		    'CRChangesDummyClass functionOrder1 ug 21/6/2020 15:51'
		    'CRChangesDummyClass nil ug 21/6/2020 15:51'
		    'CRChangesDummyClass functionOrder1 ug 21/6/2020 15:51') asOrderedCollection)