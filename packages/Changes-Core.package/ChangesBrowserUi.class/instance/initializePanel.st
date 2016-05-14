ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
	panel := UiContainer new.
	panel extent: (811@566).
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
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	panel color: (Color veryVeryLightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiButtonGroup new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (186@89).
	unnamedMorph1 position: (61@359).
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
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	browseCurrentButton := UiPushButton new.
	browseCurrentButton changeTableLayout.
	browseCurrentButton extent: (111@22).
	browseCurrentButton position: (99@364).
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
	browseCurrentButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
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
	resetToVersionPushButton := UiPushButton new.
	resetToVersionPushButton changeTableLayout.
	resetToVersionPushButton extent: (177@22).
	resetToVersionPushButton position: (65@391).
	resetToVersionPushButton hResizing: (#shrinkWrap).
	resetToVersionPushButton vResizing: (#shrinkWrap).
	resetToVersionPushButton minWidth: (1).
	resetToVersionPushButton minHeight: (1).
	resetToVersionPushButton cellInset: (4).
	resetToVersionPushButton cellPositioning: (#center).
	resetToVersionPushButton cellSpacing: (#none).
	resetToVersionPushButton layoutInset: (2@0 corner: 2@0).
	resetToVersionPushButton listCentering: (#topLeft).
	resetToVersionPushButton listDirection: (#leftToRight).
	resetToVersionPushButton listSpacing: (#none).
	resetToVersionPushButton maxCellSize: (1073741823).
	resetToVersionPushButton minCellSize: (0).
	resetToVersionPushButton wrapCentering: (#topLeft).
	resetToVersionPushButton wrapDirection: (#none).
	resetToVersionPushButton frameFractions: (0@0 corner: 1@1).
	resetToVersionPushButton frameOffsets: (0@0 corner: 0@0).
	resetToVersionPushButton balloonText: (nil).
	resetToVersionPushButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	resetToVersionPushButton enabled: (true).
	resetToVersionPushButton setProperty: #iconByDesigner toValue: 'nil'.
	resetToVersionPushButton icon: (nil).
	resetToVersionPushButton text: ('Reset to selected version').
	resetToVersionPushButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	resetToVersionPushButton checkable: (true).
	resetToVersionPushButton checked: (false).
	resetToVersionPushButton autoExclusive: (true).
	resetToVersionPushButton setProperty: #objectName toValue: 'resetToVersionPushButton'.
	unnamedMorph1 addChild: resetToVersionPushButton.
	closePushButton := UiPushButton new.
	closePushButton changeTableLayout.
	closePushButton extent: (64@22).
	closePushButton position: (122@420).
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
	closePushButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
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
	diffScreen := UiTextEdit new.
	diffScreen extent: (474@242).
	diffScreen position: (322@295).
	diffScreen hResizing: (#rigid).
	diffScreen vResizing: (#rigid).
	diffScreen minWidth: (1).
	diffScreen minHeight: (1).
	diffScreen cellInset: (0).
	diffScreen cellPositioning: (#center).
	diffScreen cellSpacing: (#none).
	diffScreen layoutInset: (0).
	diffScreen listCentering: (#topLeft).
	diffScreen listDirection: (#topToBottom).
	diffScreen listSpacing: (#none).
	diffScreen maxCellSize: (1073741823).
	diffScreen minCellSize: (0).
	diffScreen wrapCentering: (#topLeft).
	diffScreen wrapDirection: (#none).
	diffScreen frameFractions: (0@0 corner: 1@1).
	diffScreen frameOffsets: (0@0 corner: 0@0).
	diffScreen balloonText: (nil).
	diffScreen balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	diffScreen widgetResizable: (true).
	diffScreen horizontalScrollBarPolicy: (#alwaysOff).
	diffScreen verticalScrollBarPolicy: (#asNeeded).
	diffScreen outerBorderWidth: (1).
	diffScreen scrollBarThickness: (9).
	diffScreen theText: ('').
	diffScreen readOnly: (false).
	diffScreen autoConvert: (false).
	diffScreen autoAccept: (false).
	diffScreen acceptOnFocusLost: (false).
	diffScreen scrollingMode: (#none).
	diffScreen scrollingLimit: (10).
	diffScreen setProperty: #objectName toValue: 'diffScreen'.
	panel addChild: diffScreen.
	changesListView := PluggableListMorphPlus new.
	changesListView extent: (473@269).
	changesListView position: (323@12).
	changesListView hResizing: (#rigid).
	changesListView vResizing: (#rigid).
	changesListView minWidth: (55).
	changesListView minHeight: (30).
	changesListView cellInset: (0).
	changesListView cellPositioning: (#center).
	changesListView cellSpacing: (#none).
	changesListView layoutInset: (0).
	changesListView listCentering: (#topLeft).
	changesListView listDirection: (#topToBottom).
	changesListView listSpacing: (#none).
	changesListView maxCellSize: (1073741823).
	changesListView minCellSize: (0).
	changesListView wrapCentering: (#topLeft).
	changesListView wrapDirection: (#none).
	changesListView frameFractions: (0@0 corner: 1@1).
	changesListView frameOffsets: (0@0 corner: 0@0).
	changesListView balloonText: (nil).
	changesListView balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	changesListView setProperty: #objectName toValue: 'changesListView'.
	panel addChild: changesListView.
	versionListView := PluggableListMorph new.
	versionListView extent: (297@271).
	versionListView position: (12@11).
	versionListView hResizing: (#rigid).
	versionListView vResizing: (#rigid).
	versionListView minWidth: (55).
	versionListView minHeight: (30).
	versionListView cellInset: (0).
	versionListView cellPositioning: (#center).
	versionListView cellSpacing: (#none).
	versionListView layoutInset: (0).
	versionListView listCentering: (#topLeft).
	versionListView listDirection: (#topToBottom).
	versionListView listSpacing: (#none).
	versionListView maxCellSize: (1073741823).
	versionListView minCellSize: (0).
	versionListView wrapCentering: (#topLeft).
	versionListView wrapDirection: (#none).
	versionListView frameFractions: (0@0 corner: 1@1).
	versionListView frameOffsets: (0@0 corner: 0@0).
	versionListView balloonText: (nil).
	versionListView balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
	versionListView setProperty: #objectName toValue: 'versionListView'.
	panel addChild: versionListView.
	panel setProperty: #uiClassName toValue: 'ChangesBrowser'.