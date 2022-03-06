Config = {}

Config.Command = "kys"

Config.BlackBars = true -- should blackbars appear in the last stand cinematic camera mode?

Config.ValidWeapons = {
	`WEAPON_REVOLVER_CATTLEMAN`,
   	`WEAPON_REVOLVER_CATTLEMAN_MEXICAN`,
   	`WEAPON_REVOLVER_DOUBLEACTION`,
   	`WEAPON_REVOLVER_DOUBLEACTION_GAMBLER`,
   	`WEAPON_REVOLVER_LEMAT`,
   	`WEAPON_REVOLVER_NAVY`,
   	`WEAPON_REVOLVER_NAVY_CROSSOVER`,
   	`WEAPON_REVOLVER_SCHOFIELD`,
   	`WEAPON_PISTOL_1899`,
   	`WEAPON_PISTOL_MAUSER`,
   	`WEAPON_PISTOL_SEMIAUTO`,
   	`WEAPON_PISTOL_VOLCANIC`,
}

Config.Locales = {
    ["shoot"] = "Shoot",
    ["suicide"] = "Suicide",
    ["leave"]= "Leave",
    ["sure"]= "Are you sure about this? If the answer is yes enter /"..Config.Command..' again...',
    ["requirement"]= "You need to have a revolver with atleast one bullet left in your hand.",
}

Config.Notification = 'chat' -- redemrp, vorp, gum_notify or chat. If you want to you can use your own notification system in the function below.

SendNotification = function(text) -- not really sure about any of these framework notifications so please correct these if they dont work :)
	if Config.Notification == 'redemrp' then
		TriggerEvent('redem_roleplay:Tip', text, 7500)
	elseif Config.Notification == 'vorp' then
		TriggerEvent("vorp:Tip", text, 7500)
	elseif Config.Notification == 'gum_notify' then
		exports['gum_notify']:DisplayLeftNotification(Config.Locales.suicide, text, '', 7500)
	elseif Config.Notification == 'chat' then
	TriggerEvent('chat:addMessage', {
		color = { 255, 0, 0},
		multiline = true,
		args = {Config.Locales.suicide, text}
	})
	end
end