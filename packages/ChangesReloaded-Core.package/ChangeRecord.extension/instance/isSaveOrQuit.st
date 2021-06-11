*ChangesReloaded-Core
isSaveOrQuit

	^ (self string beginsWith: '----SNAPSHOT----') or:
		[self string beginsWith: '----QUIT----']