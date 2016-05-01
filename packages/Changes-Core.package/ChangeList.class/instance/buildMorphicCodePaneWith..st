menu actions
buildMorphicCodePaneWith: editString

	| codePane |

	codePane := AcceptableCleanTextMorph
		on: self
		text: #contents 
		accept: #contents:
		readSelection: #contentsSelection 
		menu: #codePaneMenu:shifted:.
	codePane font: Preferences standardCodeFont.
	editString ifNotNil: [
		codePane editString: editString.
		codePane hasUnacceptedEdits: true
	].
	^codePane
