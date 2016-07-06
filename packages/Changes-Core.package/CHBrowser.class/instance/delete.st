destruction
delete
	"super delete."
	self browserLogic delete.
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.