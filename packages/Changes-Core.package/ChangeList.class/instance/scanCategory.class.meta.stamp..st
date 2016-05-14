scanning
scanCategory: category class: class meta: meta stamp: stamp
	| itemPosition method selector |

	[itemPosition := self file position.
	method := self file nextChunk.
	self file skipStyleChunk.
	method size > 0]						"done when double terminators"
		whileTrue:
		[self addItem: (ChangeRecord new file: self file position: itemPosition type: #method
							class: class category: category meta: meta stamp: stamp)
			text: 'method: ' , class , (meta ifTrue: [' class '] ifFalse: [' '])
				, ((selector := ((Smalltalk classNamed: class) ifNil: [Object]) newParser parseSelector: method) isNil
					ifTrue: ['unparsableSelector']
					ifFalse: [selector])
				, (stamp isEmpty ifTrue: [''] ifFalse: ['; ' , stamp])]