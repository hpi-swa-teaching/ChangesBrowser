do it regex
classCreatedRegex      
	
	^ '^[^ ]+ subclass\: #(\S+).*category\: ''(.+)''$' asRegex