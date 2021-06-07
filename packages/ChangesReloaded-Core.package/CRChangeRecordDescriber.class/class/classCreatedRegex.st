doIt regex
classCreatedRegex      
	
	^ '^[^ ]+ subclass\: #(\S+).*category\: (''?.+''?)$' asRegex