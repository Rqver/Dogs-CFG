Shared = {}

---
--- Framework Related Settings
---
Shared.Framework = "STANDALONE" -- STANDALONE, QB, QBX, ESX, ND, CUSTOM (Available in sv_open)
Shared.Item = false -- Whether or not the dog can be spawned/removed by selecting an item. Framework must be QB, QBX or ESX.
Shared.ItemName = "" -- The name of the item that will spawn/remove the dog, only works if Shared.Item is true.
Shared.DisableCommand = false -- Whether or not to disable the /dog command. (If you only want to use the item)

---
--- Dog Access Related Settings
--- You can enable multiple of these checks at once. For example, a player has to have the police job (Grade 1, 2, or 3) and be on radio channel 1.0.
---
Shared.AcePermission = "" -- The ace permission required to use dog-related commands. Leave empty to disable.
Shared.RadioChannels = { 1.0 } -- The radio channels a player must be connected to to use dog-related commands. Make the table empty to disable.
Shared.AuthorizedJobs = { ["police"] = { 1, 2, 3 } } -- The jobs and grades required to use dog-related commands. Framework cannot be STANDALONE for this to work. Make the table empty to disable.
Shared.CustomAccess = false -- Enable/disable the custom check defined in sv_open.

---
--- Notification Related Settings
---
Shared.NotifyType = "ox_lib" -- ox_lib (Standard Notifications), chat (messages in chat), qb (qb-core notify function), okok (okok-notify), bulletin (avail on github), custom (modify in cl_notify and sv_notify)

---
--- Tracking Related Settings
---
Shared.EnableTracking = true -- Whether or not the tracking system should be enabled.
Shared.EnableTrackingMenu = true -- Whether or not to send a prompt to the tracking target asking them whether or not they can be tracked.
Shared.EnableWarning = true -- Whether or not to send a warning when a track is started advising of GTA restrictions in terms of tracking distance. (Tracks more than 400m don't work)
Shared.WarningFrequency = "FIRST" -- FIRST or EVERY - whether or not to only send the notification the first time a user starts a track, or every time.\

---
--- Misc Settings
---
Shared.DogPed = "a_c_shepherd" -- The dog ped model to use.
Shared.AllowAi = false -- Whether or not AI peds can be a target for the dog attacking.

---
--- List of vehicles that police dog's will be able to enter
---
Shared.Vehicles = {
    {
        model = "spawncode", -- Vehicle Model/Spawncode
        doors = { 'trunk' }, -- A list of doors to open on that vehicle as the dog gets in/out. Leave empty to not open any doors.
        seat = 1 -- The seat ID the dog should get into. Drivers Seat: -1, Passenger Seat: 0, Back Drivers Side: 1, Back Passengers Side: 2
    }
}
