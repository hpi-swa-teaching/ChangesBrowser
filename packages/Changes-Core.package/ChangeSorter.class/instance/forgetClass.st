class list
forgetClass
	"Remove all mention of this class from the changeSet.
	 After forgetting, select at the same point in the class
	 list, which helps if e.g. doing something repetitive such
	 as moving a number of classes to the other side."
	| index classList |
	self okToChange ifFalse: [^ self].
	currentClassName ifNil: [^self].
	index := self classList indexOf: currentClassName.
	myChangeSet removeClassChanges: (self withoutItemAnnotation: currentClassName).
	currentSelector := nil.
	classList := self classList.
	currentClassName := classList isEmpty ifFalse:
								[classList at: (index min: classList size)].
	self showChangeSet: myChangeSet