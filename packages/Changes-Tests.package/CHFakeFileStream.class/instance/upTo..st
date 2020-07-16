overwriting
upTo: delimiter
    | returnString |
    returnString := ''.
    [(self position < self string size) and: (self peek ~~ delimiter)] whileTrue: [ returnString := returnString , self next].
    self position: self position + 1.
    ^ returnString
