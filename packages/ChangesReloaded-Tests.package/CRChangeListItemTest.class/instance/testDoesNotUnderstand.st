testing
testDoesNotUnderstand
	"Only use methodChangeListItem as example. Since this is the same for all types of CRChangeListItems, this is sufficient to test CRChangeListItem>>doesNotUnderstand."
	
	self shouldnt: [self specificChangeListItem1 text] raise: MessageNotUnderstood