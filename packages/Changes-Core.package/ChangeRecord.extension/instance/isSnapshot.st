*Changes-Core
isSnapshot
	^(self string beginsWith: '----') and: [(self string beginsWith: '----End') not]