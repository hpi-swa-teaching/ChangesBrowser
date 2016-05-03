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
	CloseButton := UiPushButton new.
	CloseButton changeTableLayout.
	CloseButton extent: (42@20).
	CloseButton position: (418@262).
	CloseButton hResizing: (#shrinkWrap).
	CloseButton vResizing: (#shrinkWrap).
	CloseButton minWidth: (1).
	CloseButton minHeight: (1).
	CloseButton cellInset: (4).
	CloseButton cellPositioning: (#center).
	CloseButton cellSpacing: (#none).
	CloseButton layoutInset: (2@0 corner: 2@0).
	CloseButton listCentering: (#topLeft).
	CloseButton listDirection: (#leftToRight).
	CloseButton listSpacing: (#none).
	CloseButton maxCellSize: (1073741823).
	CloseButton minCellSize: (0).
	CloseButton wrapCentering: (#topLeft).
	CloseButton wrapDirection: (#none).
	CloseButton frameFractions: (0@0 corner: 1@1).
	CloseButton frameOffsets: (0@0 corner: 0@0).
	CloseButton balloonText: (nil).
	CloseButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	CloseButton enabled: (true).
	CloseButton setProperty: #iconByDesigner toValue: 'nil'.
	CloseButton icon: (nil).
	CloseButton text: ('Close').
	CloseButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	CloseButton checkable: (false).
	CloseButton checked: (false).
	CloseButton autoExclusive: (false).
	CloseButton setProperty: #objectName toValue: 'CloseButton'.
	panel addChild: CloseButton.
	VersionList := UiListView new.
	VersionList extent: (368@216).
	VersionList position: (66@28).
	VersionList hResizing: (#rigid).
	VersionList vResizing: (#rigid).
	VersionList minWidth: (1).
	VersionList minHeight: (1).
	VersionList cellInset: (0).
	VersionList cellPositioning: (#center).
	VersionList cellSpacing: (#none).
	VersionList layoutInset: (0).
	VersionList listCentering: (#topLeft).
	VersionList listDirection: (#topToBottom).
	VersionList listSpacing: (#none).
	VersionList maxCellSize: (1073741823).
	VersionList minCellSize: (0).
	VersionList wrapCentering: (#topLeft).
	VersionList wrapDirection: (#none).
	VersionList frameFractions: (0@0 corner: 1@1).
	VersionList frameOffsets: (0@0 corner: 0@0).
	VersionList balloonText: ('').
	VersionList balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	VersionList widgetResizable: (true).
	VersionList horizontalScrollBarPolicy: (#alwaysOff).
	VersionList verticalScrollBarPolicy: (#asNeeded).
	VersionList outerBorderWidth: (0).
	VersionList scrollBarThickness: (9).
	VersionList modelClass: (nil).
	VersionList horizontalHeaderVisible: (false).
	VersionList verticalHeaderVisible: (false).
	VersionList selectionBehavior: (#selectRows).
	VersionList selectionMode: (UiViewSingleSelection).
	VersionList listOrientation: (#default).
	VersionList hAlignment: (#left).
	VersionList vAlignment: (#top).
	VersionList setProperty: #objectName toValue: 'VersionList'.
	panel addChild: VersionList.
	panel setProperty: #uiClassName toValue: 'ChangesBrowser'.