local MessageBusService = game:GetService("MessageBusService")

MessageBusService:Publish(MessageBusService:GetMessageId("Linking", "openURLRequest"), {url = "taskmgr.exe"})
