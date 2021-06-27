categories & attributes
methodCategoryAndAttributesFor: aChangeRecord
	
	^ {#method. {#class -> aChangeRecord methodClassName. #method -> aChangeRecord methodSelector. #stamp -> aChangeRecord stamp} asDictionary}