initialization
registerForSystemChangeNotifications
	SystemChangeNotifier uniqueInstance 
		notify: self
		ofAllSystemChangesUsing: #refresh .