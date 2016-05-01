annotation
withoutItemAnnotation: aStringOrNil
"return the current item without the package annotation we added on"
| endItemIndex |
aStringOrNil ifNil: [^nil] .
( endItemIndex := aStringOrNil findString: self beginNote) = 0
	ifTrue: [^ aStringOrNil ] .
^ aStringOrNil first: endItemIndex - 1