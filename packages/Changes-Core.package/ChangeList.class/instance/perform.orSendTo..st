menu actions
perform: selector orSendTo: otherTarget
	"Selector was just chosen from a menu by a user.  If I can respond, then perform it on myself.  If not, send it to otherTarget, presumably the editPane from which the menu was invoked." 

	(#accept == selector) ifTrue:
		[otherTarget isMorph ifFalse: [^ self acceptFrom: otherTarget view]].
			"weird special case just for mvc changlist"

	^ super perform: selector orSendTo: otherTarget