*ChangesReloaded-Core
registerMethodRenamedIn: aClass from: anOldMethodName to: aNewMethodName

	SystemChangeNotifier uniqueInstance trigger: (DoItEvent expression: ('"<CR>{1} methodRenamed: #{2} toBe: #{3}"' format: {aClass. anOldMethodName selector. aNewMethodName selector}) context: '').