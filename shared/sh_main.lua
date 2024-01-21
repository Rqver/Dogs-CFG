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
--- Searching Related Settings
---
-- For Vehicle searching to work, you must either use ox_inventory or use qb-inventory, or implement your own custom logic.
-- No changes are required to ox_inventory, for qb-inventory follow the instructions in the README file.
Shared.EnableVehicleSearching = true -- Whether or not the vehicle searching system should be enabled. (Supports ox_inventory, qb-inventory & Custom Logic) (Available in sv_open)
Shared.EnablePlayerSearching = true -- Whether or not the player searching system should be enabled. (Supports ox_inventory, qb-inventory, ESX, & Custom logic) (Available in sv_open)
-- For drop searching to work, you must use qb-inventory, or implement your own custom logic.
-- Follow the instructions in the README file for setting up qb-inventory.
Shared.EnableDropSearching = true -- Whether or not to enable searching for the closest dropped item on the ground. (Supports qb_inventory & Custom Logic) (Available in sv_open)
Shared.DropSearchingRadius = 150.0 -- The radius from the player's coordinates to look for dropped items within.
Shared.SearchAllDrops = true -- If true, the dog will detect all dropped items. If false, it will only detect dropped items that include an item in Shared.SearchItems.
Shared.UseOxInventory = true -- Whether or not you use ox_inventory (Will use inventory exports instead of framework exports) (Available in sv_open)
Shared.AlertAnimationLength = 3500 -- The length (in ms) of the alert animation after finding something during a search
Shared.SearchItems = { -- A vehicle/person must have one of these items in/on it/them in order for the dog to alert at it/them.
    "weapon_pistol",
    "joint",
}

---
--- Misc Settings
---
Shared.DogPeds = { { model = "a_c_shepherd", name = "Police Dog" } } -- The list of dog ped options. If there are multiple peds, a menu will appear to select an option.
Shared.AllowAi = false -- Whether or not AI peds can be a target for the dog attacking.
Shared.DefaultKeybinds = { -- The default keybinds for when the bind is registered. All keybinds are changeable by individual players through Settings -> Keybindings -> FiveM
    ["EXTEND_LEASH"] = "UP", -- Hold down this key to extend the length of the leash
    ["SHORTEN_LEASH"] = "DOWN", -- Hold down this key to decrease the length of the leash
    ["CANCEL_EMOTE"] = "X", -- Cancel your dogs current emote
    ["SIT"] = "", -- Make your dog sit,
    ["LIE_DOWN"] = "", -- Make your dog lie down
    ["HOLD"] = "", -- Hold your dog between your legs
    ["BARK"] = "", -- Make your dog bark
    ["HEEL"] = "", -- Toggle your dogs heeling status
    ["TP"] = "", -- Teleport your dog to you
    ["CAR"] = "", -- Makes your dog enter/exit your car
    ["ATTACK"] = "" -- Make your dog attack a player/ped
}

---
--- List of vehicles that police dog's will be able to enter
---
Shared.Vehicles = {
    {
        model = "spawncode", -- Vehicle Model/Spawncode
        doors = { 'trunk' }, -- A list of doors to open on that vehicle as the dog gets in/out. Leave empty to not open any doors. Options are "trunk" (in quotes), 0 - Left front door, 1 - Right Front Door, 2 - Left Rear Door , 3 - Right Rear Door, 4 - Hood (All numbers should NOT be in quotes)
        seat = 1 -- The seat ID the dog should get into. Drivers Seat: -1, Passenger Seat: 0, Back Drivers Side: 1, Back Passengers Side: 2
    }
}
