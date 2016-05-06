accessing
listMenu: aMenu

| targetClass differentMenu className |

className _ list 
at: selectedIndex 
ifAbsent: [
^aMenu add: 'nothing selected' target: self selector: #beep
].
targetClass _ Smalltalk 
at: className 
ifAbsent: [
^aMenu add: 'that class is history!' target: self selector: #beep
].
differentMenu _ DumberMenuMorph new.	"avoid the retargeting business"
differentMenu
add: 'browse' target: targetClass selector: #browse;
add: 'inspect' target: targetClass selector: #inspect;
add: 'explore' target: targetClass selector: #explore.
^ differentMenu
