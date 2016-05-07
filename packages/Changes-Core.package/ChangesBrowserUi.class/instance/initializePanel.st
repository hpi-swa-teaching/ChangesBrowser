ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	|  |
	
	panel := UiContainer new.
	panel extent: (500@300).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (1).
	panel minHeight: (1).
	panel cellInset: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (4).
	panel listCentering: (#topLeft).
	panel listDirection: (#topToBottom).
	panel listSpacing: (#none).
	panel maxCellSize: (1073741823).
	panel minCellSize: (0).
	panel wrapCentering: (#topLeft).
	panel wrapDirection: (#none).
	panel frameFractions: (0@0 corner: 1@1).
	panel frameOffsets: (0@0 corner: 0@0).
	panel balloonText: (nil).
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	panel color: (Color gray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	browseCurrentButton := SimpleButtonMorph new.
	browseCurrentButton extent: (37@21).
	browseCurrentButton position: (324@256).
	browseCurrentButton hResizing: (#rigid).
	browseCurrentButton vResizing: (#rigid).
	browseCurrentButton minWidth: (1).
	browseCurrentButton minHeight: (1).
	browseCurrentButton cellInset: (0).
	browseCurrentButton cellPositioning: (#center).
	browseCurrentButton cellSpacing: (#none).
	browseCurrentButton layoutInset: (0).
	browseCurrentButton listCentering: (#topLeft).
	browseCurrentButton listDirection: (#topToBottom).
	browseCurrentButton listSpacing: (#none).
	browseCurrentButton maxCellSize: (1073741823).
	browseCurrentButton minCellSize: (0).
	browseCurrentButton wrapCentering: (#topLeft).
	browseCurrentButton wrapDirection: (#none).
	browseCurrentButton frameFractions: (0@0 corner: 1@1).
	browseCurrentButton frameOffsets: (0@0 corner: 0@0).
	browseCurrentButton balloonText: (nil).
	browseCurrentButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	browseCurrentButton setProperty: #objectName toValue: 'browseCurrentButton'.
	panel addChild: browseCurrentButton.
	listView := PluggableListMorph new.
	listView extent: (370@197).
	listView position: (65@34).
	listView hResizing: (#rigid).
	listView vResizing: (#rigid).
	listView minWidth: (55).
	listView minHeight: (30).
	listView cellInset: (0).
	listView cellPositioning: (#center).
	listView cellSpacing: (#none).
	listView layoutInset: (0).
	listView listCentering: (#topLeft).
	listView listDirection: (#topToBottom).
	listView listSpacing: (#none).
	listView maxCellSize: (1073741823).
	listView minCellSize: (0).
	listView wrapCentering: (#topLeft).
	listView wrapDirection: (#none).
	listView frameFractions: (0@0 corner: 1@1).
	listView frameOffsets: (0@0 corner: 0@0).
	listView balloonText: (nil).
	listView balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	listView setProperty: #objectName toValue: 'listView'.
	panel addChild: listView.
	CloseButton := SimpleButtonMorph new.
	CloseButton extent: (37@21).
	CloseButton position: (425@257).
	CloseButton hResizing: (#rigid).
	CloseButton vResizing: (#rigid).
	CloseButton minWidth: (1).
	CloseButton minHeight: (1).
	CloseButton cellInset: (0).
	CloseButton cellPositioning: (#center).
	CloseButton cellSpacing: (#none).
	CloseButton layoutInset: (0).
	CloseButton listCentering: (#topLeft).
	CloseButton listDirection: (#topToBottom).
	CloseButton listSpacing: (#none).
	CloseButton maxCellSize: (1073741823).
	CloseButton minCellSize: (0).
	CloseButton wrapCentering: (#topLeft).
	CloseButton wrapDirection: (#none).
	CloseButton frameFractions: (0@0 corner: 1@1).
	CloseButton frameOffsets: (0@0 corner: 0@0).
	CloseButton balloonText: (nil).
	CloseButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	CloseButton setProperty: #objectName toValue: 'CloseButton'.
	panel addChild: CloseButton.
	panel setProperty: #uiClassName toValue: 'ChangesBrowser'.