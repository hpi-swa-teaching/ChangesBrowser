class list
classList
	"return the classlist with package note appended."
	
	^ self basicClassList collect: [: each | 
		each asString, (self packageNoteForClass: (Smalltalk classNamed: each) selector: nil) ] .