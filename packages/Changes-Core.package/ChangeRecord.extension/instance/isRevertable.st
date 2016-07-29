*Changes-Core
isRevertable

	^ ((self string beginsWith: 'self') or: [self string beginsWith: '----']) not