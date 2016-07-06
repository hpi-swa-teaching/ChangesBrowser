testing
testSystemChangeNotification
	SystemChangeNotifier uniqueInstance allSystemEvents do: [ :systemEvent |
		self assert: (
			(SystemChangeNotifier uniqueInstance eventSource actionSequenceForEvent: systemEvent) 
				includes: (WeakMessageSend receiver: self changesBrowser browserLogic selector: #refresh))].
	
	self tearDown.
	SystemChangeNotifier uniqueInstance allSystemEvents do: [ :systemEvent |
		self deny: (
			(SystemChangeNotifier uniqueInstance eventSource actionSequenceForEvent: systemEvent) 
				includes: (WeakMessageSend receiver: self changesBrowser browserLogic selector: #refresh))].