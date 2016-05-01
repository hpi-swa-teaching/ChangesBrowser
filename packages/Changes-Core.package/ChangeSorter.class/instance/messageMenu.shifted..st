message list
messageMenu: aMenu shifted: shifted
	"Fill aMenu with items appropriate for the message list; could be for a single or double changeSorter"

	^ self menu: aMenu for: #(messageListMenu messageListMenuShifted:) shifted: shifted