scanning
scanFile: aFile from: startPosition to: stopPosition
	self file: aFile.
	self changeList: OrderedCollection new.
	self list: OrderedCollection new.
	self listIndex: 0.
	self file position: startPosition.
'Scanning ', aFile localName, '...'
	displayProgressFrom: startPosition to: stopPosition
	during: [:bar | | prevChar itemPosition item |
	[self file position < stopPosition]
		whileTrue:
		[bar value: self file position.
		[self file atEnd not and: [self file peek isSeparator]]
				whileTrue: [prevChar := self file next].
		(self file peekFor: $!)
		ifTrue:
			[(prevChar = Character cr or: [prevChar = Character lf])
				ifTrue: [self scanCategory]]
		ifFalse:
			[itemPosition := self file position.
			item := self file nextChunk.
			self file skipStyleChunk.
			item size > 0 ifTrue:
				[self addItem: (ChangeRecord new file: self file position: itemPosition type: #doIt)
					text: 'do it: ' , (item contractTo: 50)]]]].
	self listSelections: (Array new: list size withAll: false)