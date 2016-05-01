menu
versionFrom: secsSince1901
	
	"Return changeRecord of the version in effect at that time.  Accept in the VersionsBrowser does not use this code."

	changeList do: [:cngRec | | vTime strings |
		(strings := cngRec stamp findTokens: ' ') size > 2 ifTrue: [
				vTime := strings second asDate asSeconds + 
							strings third asTime asSeconds.
				vTime <= secsSince1901 ifTrue: ["this one"
					^ cngRec == changeList first ifTrue: [nil] ifFalse: [cngRec]]]].
	"was not defined that early.  Don't delete the method."
	^ changeList last	"earliest one may be OK"	