def onStartup(session):
	system.perspective.navigate(/firstpage)
	system.perspective.openDock("1")
	system.perspective.closeDock("2")
	self.session.custom.activeLeftDock = "iconDocked"