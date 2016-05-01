menu actions
acceptFrom: aView

	aView controller text = aView controller initialText ifFalse: [
		aView flash.
		^ self inform: 'You can only accept this version as-is.
If you want to edit, copy the text to a browser'].
	(aView setText: aView controller text from: self) ifTrue:
		[aView ifNotNil: [aView controller accept]].	"initialText"
