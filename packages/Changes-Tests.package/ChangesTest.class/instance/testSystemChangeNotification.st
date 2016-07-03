testing
testSystemChangeNotification
	SystemChangeNotifier uniqueInstance allSystemEvents do: [ :systemEvent |
		self assert: (
			(SystemChangeNotifier uniqueInstance eventSource actionSequenceForEvent: systemEvent) 
				includes: (WeakMessageSend receiver: self changesBrowser selector: #refresh))]