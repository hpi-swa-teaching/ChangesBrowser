ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
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
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.737)).
	panel color: (Color veryVeryLightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	listView := PluggableListMorph new.
	listView extent: (276@258).
	listView position: (40@13).
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
	listView balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	listView setProperty: #objectName toValue: 'listView'.
	panel addChild: listView.
	unnamedMorph1 := UiButtonGroup new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (100@100).
	unnamedMorph1 position: (338@174).
	unnamedMorph1 hResizing: (#rigid).
	unnamedMorph1 vResizing: (#rigid).
	unnamedMorph1 minWidth: (1).
	unnamedMorph1 minHeight: (1).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (4).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#topToBottom).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	browseCurrentButton := UiPushButton new.
	browseCurrentButton changeTableLayout.
	browseCurrentButton extent: (103@20).
	browseCurrentButton position: (342@178).
	browseCurrentButton hResizing: (#shrinkWrap).
	browseCurrentButton vResizing: (#shrinkWrap).
	browseCurrentButton minWidth: (1).
	browseCurrentButton minHeight: (1).
	browseCurrentButton cellInset: (4).
	browseCurrentButton cellPositioning: (#center).
	browseCurrentButton cellSpacing: (#none).
	browseCurrentButton layoutInset: (2@0 corner: 2@0).
	browseCurrentButton listCentering: (#topLeft).
	browseCurrentButton listDirection: (#leftToRight).
	browseCurrentButton listSpacing: (#none).
	browseCurrentButton maxCellSize: (1073741823).
	browseCurrentButton minCellSize: (0).
	browseCurrentButton wrapCentering: (#topLeft).
	browseCurrentButton wrapDirection: (#none).
	browseCurrentButton frameFractions: (0@0 corner: 1@1).
	browseCurrentButton frameOffsets: (0@0 corner: 0@0).
	browseCurrentButton balloonText: (nil).
	browseCurrentButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	browseCurrentButton enabled: (true).
	browseCurrentButton setProperty: #iconByDesigner toValue: 'nil'.
	browseCurrentButton icon: (nil).
	browseCurrentButton text: ('Browse Version').
	browseCurrentButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	browseCurrentButton checkable: (true).
	browseCurrentButton checked: (false).
	browseCurrentButton autoExclusive: (true).
	browseCurrentButton setProperty: #objectName toValue: 'browseCurrentButton'.
	unnamedMorph1 addChild: browseCurrentButton.
	closePushButton := UiPushButton new.
	closePushButton changeTableLayout.
	closePushButton extent: (62@20).
	closePushButton position: (363@205).
	closePushButton hResizing: (#shrinkWrap).
	closePushButton vResizing: (#shrinkWrap).
	closePushButton minWidth: (1).
	closePushButton minHeight: (1).
	closePushButton cellInset: (4).
	closePushButton cellPositioning: (#center).
	closePushButton cellSpacing: (#none).
	closePushButton layoutInset: (2@0 corner: 2@0).
	closePushButton listCentering: (#topLeft).
	closePushButton listDirection: (#leftToRight).
	closePushButton listSpacing: (#none).
	closePushButton maxCellSize: (1073741823).
	closePushButton minCellSize: (0).
	closePushButton wrapCentering: (#topLeft).
	closePushButton wrapDirection: (#none).
	closePushButton frameFractions: (0@0 corner: 1@1).
	closePushButton frameOffsets: (0@0 corner: 0@0).
	closePushButton balloonText: ('').
	closePushButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	closePushButton enabled: (true).
	closePushButton setProperty: #iconByDesigner toValue: 'UiDiagonaIcons icon0301Normal'.
	closePushButton icon: (UiDiagonaIcons icon0301Normal).
	closePushButton text: ('Close').
	closePushButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	closePushButton checkable: (true).
	closePushButton checked: (false).
	closePushButton autoExclusive: (true).
	closePushButton setProperty: #objectName toValue: 'closePushButton'.
	unnamedMorph1 addChild: closePushButton.
	panel addChild: unnamedMorph1.
	panel setProperty: #uiClassName toValue: 'ChangesBrowser'.