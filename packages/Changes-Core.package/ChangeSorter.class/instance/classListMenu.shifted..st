class list
classListMenu: aMenu shifted: shifted
	"Fill aMenu with items appropriate for the class list"
	^ self menu: aMenu for: #(classListMenu classListMenuShifted:) shifted: shifted
