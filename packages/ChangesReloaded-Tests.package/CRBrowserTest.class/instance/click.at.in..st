mock inputs
click: aMouseButton at: aPoint in: aWorld

	(self class handIn: aWorld) 
		handleEvent: (self mouse: aMouseButton downAt: aPoint in: aWorld);
		handleEvent: (self mouse: aMouseButton upAt: aPoint in: aWorld)
