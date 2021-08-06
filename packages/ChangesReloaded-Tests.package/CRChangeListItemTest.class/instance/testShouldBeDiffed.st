testing
testShouldBeDiffed
	
	self assert:  self specificChangeListItem1 shouldBeDiffed.
	self assert:  self specificChangeListItem2 shouldBeDiffed.
	self deny: self specificChangeListItem3 shouldBeDiffed.