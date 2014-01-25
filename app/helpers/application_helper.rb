module ApplicationHelper
	def getClassValueForNavItem(navItemControllerName, controllerName)
		p "Controller: " + controllerName + "==" + controllerName
		return "active" if navItemControllerName == controllerName
		return ""
	end
end
