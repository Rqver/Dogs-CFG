---- Documentation: https://rqver-resources.gitbook.io/rq-dogs/
---- Discord: discord.gg/Ewd64CZ4FY

Shared = {}

---
--- Framework Related Settings
---
Shared.Framework = "STANDALONE" -- STANDALONE, QB, QBX, ESX, ND, CUSTOM (Available in sv_open)
Shared.Item = false -- Whether or not the dog can be spawned/removed by selecting an item. Framework must be QB, QBX, ESX, or CUSTOM.
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
Shared.EnableTracking = true -- Whether or not the tracking system should be enabled. NOTE: If this is false and Shared.EnableFindingID is true, the finding ID + subsequent track will still function.
Shared.EnableTrackingMenu = true -- Whether or not to send a prompt to the tracking target asking them whether or not they can be tracked.
Shared.EnableWarning = true -- Whether or not to send a warning when a track is started advising of GTA restrictions in terms of tracking distance. (Tracks more than 400m don't work)
Shared.WarningFrequency = "FIRST" -- FIRST or EVERY - whether or not to only send the notification the first time a user starts a track, or every time.
Shared.EnableFindingID = true -- Whether or not to enable the /dscent <driver|passenger> command. This allows you to find the ID of the last person in the drivers/passengers seat to start a track with.
Shared.BarkOnTrackingSuccess = true -- Whether or not the dog should bark at a tracking target after a successful track, if true, the track will stop when the dog is within the below distance of the target and will bark in their direction. If not, the dog will continue tracking until /dctrack is ran.
Shared.BarkOnTrackingSuccessRange = 2.0 -- The range in GTA Units of how far away a tracking target has to be away to start barking.

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
Shared.SearchCooldown = 350 -- The time (in ms) that the script should wait between checking each item. If you have a large number of search items, it's recommended you increase this number.
Shared.SearchItems = { -- A vehicle/person must have one of these items in/on it/them in order for the dog to alert at it/them.
    "weapon_pistol",
    "joint",
}

---
--- Dog Ped Settings
---
Shared.RandomizePed = true -- Whether or not to skip the dog ped selection and instead pick a random item from the below list.
-- This is the configuration for setting up multiple dog peds, with different textures. The below is an example setup using this dog ped: https://www.lcpdfr.com/downloads/gta5mods/character/19996-german-shepherd-malinois-k9-dog/
-- If you only want one dog ped, you can remove one of the two blocks, and that ped will be used every time.
-- The name is the name that is used in the ped selection menu, if the above Shared.RandomizePed is false, and there is more than one dog ped here.
-- If you wish to change the texture of the dog ped, please refer to the documentation website, there is too much to discuss here.
Shared.DogPeds = {
    -- Sheriff
    { model = "a_c_shepherd", name = "Sheriff Dog",
      textures = {
          ["FACE"] = 2,
          ["UPPER"] = 1,
          ["ACCESSORY"] = 1,
      }
    },

    -- LSPD
    { model = "a_c_shepherd", name = "Police Dog",
      textures = {
          ["FACE"] = 0,
          ["UPPER"] = 0,
          ["ACCESSORY"] = 0,
      }
    }
}

---
--- GPS Settings
---
Shared.EnableGPS = true -- Whether or not to enable the /dgps command. Displays a blip on the map of the dogs location when enabled.
Shared.BlipText = "Dog" -- The name of the blip in the map.
Shared.BlipSprite = 442 -- The sprite to use for the blip from https://docs.fivem.net/docs/game-references/blips/#blips.
Shared.BlipColour = 30 -- The colour to use for the blip from https://docs.fivem.net/docs/game-references/blips/#blip-colors.
Shared.EnableRoute = true -- Whether or not to enable a GPS route from the dog handler to the dog when the blip is active.
Shared.ShowBlipHeadingArrow = false -- Whether or not to show an arrow displaying the dog's heading on the blip.

---
--- Misc Settings
---
Shared.DefaultLeadState = true -- Whether or not the lead should be enabled by default when you spawn in a dog. It's recommended this remains as true, as the dog is generally more natural to use on the lead. Players can change their preferred state themselves with /dheel.
Shared.EnableStoringLeadState = false -- "KVP" (INCLUDE QUOTES), "SESSION" (INCLUDE QUOTES), or false (No quotes/lowercase) - Whether or not individual players lead/heeling state should be stored. Regardless of this option, the lead state the first time interacting with the script will be the above DefaultLeadState. If this is "KVP", the players preferred lead state (changed with /dheel) will store for the duration of their session, and across server-restarts/different sessions. If this is "SESSION", the players preferred lead state will store for the duration of their session, and be forgotten and reset to the server default when they re-log. If this is false, the server default (above) will be used everytime a player spawns a dog, and using /dheel will only be effective until you respawn the dog. (Original Behaviour up until v1.8.0)
Shared.AllowAi = false -- Whether or not AI peds can be a target for the dog attacking.
Shared.BarkingAnimation = "A" -- Either 'A' or 'B'. A is a more aggressive animation but doesn't play any audio. B is a less aggressive animation but plays a barking sound track.
Shared.DogMenu = "dmenu" -- The name of the command to open the dog management menu. Make the string empty to disable the command.
Shared.WaitTime = 110 -- The wait time in milliseconds on the loop that checks for player movement. If you want the dog to respond faster to direction changes, decrease this number. If you are experiencing game crashes or performance issues, increase this number.
Shared.LeadMovementSpeed = 2.0 -- This is the number that is **SUBTRACTED** from the dog handlers speed to calculate the speed from the dog on a lead.. If you want the dog to move slower, INCREASE this number.
Shared.HeelingMovementSpeed = 2.3 -- This is the number that is **SUBTRACTED** from the dog handlers speed to calculate the speed from the dog while heeling.. If you want the dog to move slower, INCREASE this number.
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
    ["ATTACK"] = "", -- Make your dog attack a player/ped
    ["MENU"] = "", -- Opens the dog management menu (Shared.DogMenu)
    ["GPS"] = "",
}

---
--- List of vehicles that police dog's will be able to enter
---
Shared.Vehicles = {
    {
        model = "spawncode", -- Vehicle Model/Spawncode
        doors = { 'trunk' }, -- A list of doors to open on that vehicle as the dog gets in/out. Leave empty to not open any doors. Options are "trunk" (in quotes), 0 - Left front door, 1 - Right Front Door, 2 - Left Rear Door , 3 - Right Rear Door, 4 - Hood (All numbers should NOT be in quotes)
        seat = 1, -- The seat ID the dog should get into. Drivers Seat: -1, Passenger Seat: 0, Back Drivers Side: 1, Back Passengers Side: 2
        secondarySeat = 2 -- The seat ID of the dog should get into if the primary seat is occupied. This option is OPTIONAL and can be removed from the config without issue.
    }
}
