accessing
listMenu: aMenu

	| targetClass differentMenu className |

	className := self list at: self selectedIndex 
	ifAbsent: [ 	^aMenu add: 'nothing selected' target: self selector: #beep	].

	targetClass := Smalltalk at: className 
	ifAbsent: [ ^aMenu add: 'that class is history!' target: self selector: #beep ].

	differentMenu := DumberMenuMorph new.	"avoid the retargeting business"
	differentMenu
		add: 'browse' target: targetClass selector: #browse;
		add: 'inspect' target: targetClass selector: #inspect;
		add: 'explore' target: targetClass selector: #explore.
	
	^ differentMenu
