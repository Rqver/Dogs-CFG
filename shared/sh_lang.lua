Lang = {}

---
--- Messages sent via the notification system
--- Set messages to an empty set of quotes ("") to prevent the message from being sent.
--- To setup the notification system visit the sh_main.lua file.
---

---
--- General Notifications
---
Lang.DogCreated = "Use your up/down arrow keys to adjust the length of your dog lead!" -- The message sent to a player when they spawn a dog in.
Lang.DogDeath = "Your dog died! RIP 🪦" -- The message sent to a player when their dog dies.
Lang.NoDog = "You do not have a dog!" -- The message sent to a player when they try to a perform an action without a dog.
Lang.RemovedDog = "Successfully returned your dog." -- The message sent to a player when they delete their dog.
Lang.AlreadyDoing = "You are already doing this!" -- The message sent to a player if the try to start an action/emote they are already doing.
Lang.NoAccess = "You cannot access dog commands!" -- The message sent to a player if they try to run /dog and can't access dog-related commands.

---
--- Car Notifications
---
Lang.NotInCar = "You are not in a car!" -- The message sent to a player when they try to make their dog enter their car while not in a car.
Lang.ExitVehicle = "Please exit your vehicle before spawning a dog!" -- The message sent to a player when they try to spawn a dog while in a car.

---
--- Attacking Notifications
---
Lang.Aiming = "You need to be aiming at a player to attack them!" -- The message sent to a player when they press their attack keybind while not aiming at a player.
Lang.CalledOff = "Successfully called your dog off" -- The message sent to a player when they call their dog off from attacking a player.
Lang.PlayersOnly = "You cannot attack AI peds!" -- The message sent to a player when they try to attack an AI ped and Shared.AllowAi is false.

---
--- Tracking Notifications
---
Lang.ServerIdRequired = "Please provide a server ID for the player you wish to track!" -- The message sent to a player when they run /dtrack without specifying an id.
Lang.InvalidId = "Your dog failed to find an offender with that ID!" -- The message sent to a player when they specify an invalid player ID when using /dtrack.
Lang.TooFar = "The offender you are trying to locate is too far away to start a track!" -- The message sent to a player when the player ID they are trying to track is too far away. (GTA Limitations)
Lang.FindingScent = "Trying to find a scent...." -- The message sent to a player when the tracking prompt is successfully sent to the target.
Lang.NoScent = "Your dog failed to find a scent!" -- The message sent to a player when the target denies the tracking request.
Lang.FoundScent = "Your dog found a scent!\nRun /dctrack at any time to cancel the track." -- The message sent to a player when the target accepts the tracking request.
Lang.StoppedTracking = "Successfully stopped tracking!" -- The message sent to a player when they cancel a track.
Lang.DistanceWarning = "If the dog doesn\'t immediately start running, the offender is too far away.\nThis is a restriction of GTA - Get closer to the civ or get the civ to come closer." -- The message sent to a player when they start tracking a player.
Lang.NoTrackingTarget = "Please specify if you are tracking the DRIVER or PASSENGER!"
Lang.NoCarScent = "Your dog failed to find a scent for that seat!"
Lang.DriverScentSuccessTitle = "Driver's Scent: :id:"
Lang.PassengerScentSuccessTitle = "Driver's Scent: :id:"
Lang.ScentSuccessDesc = "Would you like to start tracking?"

---
--- Searching Notifications
---
Lang.SearchModeDisabled = "This mode of searching has been disabled by the server!" -- The message sent to a player when they run /dsearch and specify a searching mode not enabled in sh_main.
Lang.NoTarget = "Please specify what you would like to search! /dsearch <drop|player|vehicle>" -- The message sent to a player when they run /dsearch and either don't specify any arguments, or specify invalid arguments.
Lang.NoPlayer = "Couldn't find a player to search!" -- The message sent to a player when they run /dsearch PLAYER and there isn't a player nearby.
Lang.NoVehicle = "Couldn't find a vehicle to search!" -- The message sent to a player when they run /dsearch VEHICLE and there isn't a vehicle nearby.
Lang.NoDrop = "Couldn't find a drop nearby!" -- The message sent to a player when they run /dsearch DROP and there isn't a drop nearby.
Lang.StoppedSearchingDrop = "Successfully stopped searching for a drop!" -- The message sent to a player when they run /dcsearch to cancel a search.
Lang.FoundDrop = "Successfully located the drop!" -- The message sent to a player when their dog locates a drop they are searching for.
Lang.SearchSuccess = "Your dog found something!" -- The message sent to a player when the dog alerts on a vehicle/player when searching.
Lang.SearchFailure = "Your dog didn't find anything!" -- The message sent to a player when the dog doesn't alert on a vehicle/player when searching.

---
--- GPS Language
---
Lang.GPSEnabled = "GPS Blip Enabled!"
Lang.GPSDisabled = "GPS Blip Disabled!"

---
--- Dog Ped Selection Menu
---
Lang.MenuTitle = "Dog Ped Selection" -- The title of the context menu that appears when there is more than one dog ped
Lang.ItemDescription = "Spawn a :name:" -- The description of each item in the context menu. :name: is the `name` variable in the Shared.DogPeds section of the config.

---
--- Dog Management Menu
---
Lang.MainMenuTitle = "Dog Management" -- The title of the optional dog management context menu

-- Dog Spawning/Deleting
Lang.SpawnDog = "Spawn dog" -- This item is used for spawning a police dog. It only appears if you don't already have a dog. (/dog)
Lang.SpawnDogDesc = "Spawn a police dog" -- This item is used for spawning a police dog. It only appears if you don't already have a dog. (/dog)
Lang.RemoveDog = "Remove Dog" -- This item is used for removing a police dog. It only appears if you already have a dog. (/dog)
Lang.RemoveDogDesc = "Remove your dog" -- This item is used for removing a police dog. It only appears if you already have a dog. (/dog)

-- Heeling
Lang.StartHeeling = "Start Heeling" -- This item is used for making the dog heel. It only appears if you aren't currently heeling. (/dheel)
Lang.StartHeelingDesc = "Take your dog off it's lead" -- This item is used for making the dog heel. It only appears if you aren't currently heeling. (/dheel)
Lang.StopHeeling = "Stop Heeling" -- This item is used for stopping the dog from heeling. It only appears if you are currently heeling. (/dheel)
Lang.StopHeelingDesc = "Put your dog on it's lead" -- This item is used for stopping the dog from heeling. It only appears if you are currently heeling. (/dheel)

-- Tracking
Lang.StartTracking = "Start Tracking" -- This item is used for tracking a players server ID. It opens a context menu to input a server ID and only appears if you aren't currently tracking a player. (/dtrack)
Lang.StartTrackingDesc = "Make your dog track a server ID" -- This item is used for tracking a players server ID. It opens a context menu to input a server ID and only appears if you aren't currently tracking a player. (/dtrack)
Lang.StopTracking = "Stop Tracking" -- This item is used for stopping an active track. It only appears if you are currently tracking a player. (/dctrack)
Lang.StopTrackingDesc = "Stop your dog from tracking another player" -- This item is used for stopping an active track. It only appears if you are currently tracking a player. (/dctrack)
Lang.TrackingMenuTitle = "Tracking" -- The title of the menu used to input a server ID.
Lang.TrackingMenuDesc = "Server ID of tracking target" -- The description of the menu used to input a server ID.

-- Searching
Lang.SearchPlayer = "Search Player" -- This item is used for searching the closest nearby player for illegal items. (/dsearch PLAYER)
Lang.SearchPlayerDesc = "Make your dog search the closest player" -- This item is used for searching the closest nearby player for illegal items. (/dsearch PLAYER)
Lang.SearchVehicle = "Search Vehicle" -- This item is used for searching the closest nearby vehicle for illegal items. (/dsearch VEHICLE)
Lang.SearchVehicleDesc = "Make your dog search the closest vehicle" -- This item is used for searching the closest nearby vehicle for illegal items. (/dsearch VEHICLE)
Lang.SearchDrop = "Start searching for drops" -- This item is used for searching for the closest drop on the ground, and only appears if you aren't currently searching for a drop. (/dsearch DROP)
Lang.SearchDropDesc = "Make your dog search for the closest dropped item" -- This item is used for searching for the closest drop on the ground, and only appears if you aren't currently searching for a drop. (/dsearch DROP)
Lang.StopSearchDrop = "Stop searching for drops" -- This item is used to make the dog stop searching for dropped items, and only appears if you are currently searching for a dropped item. (/dcsearch)
Lang.StopSearchDropDesc = "Stop your dog from searching for the closest dropped item" -- This item is used to make the dog stop searching for dropped items, and only appears if you are currently searching for a dropped item. (/dcsearch)

-- Vehicle
Lang.EnterCar = "Enter Car" -- This item is used to make your dog enter the closest police car, and only works if the dog isn't currently in a car. (/dcar)
Lang.EnterCarDesc = "Make your dog enter the closest police car" -- This item is used to make your dog enter the closest police car, and only works if the dog isn't currently in a car. (/dcar)
Lang.ExitCar = "Exit Vehicle" -- This item is used to make the dog exit it's current vehicle, and only works if the dog is currently in a car. (/dcar)
Lang.ExitCarDesc = "Make your dog exit the vehicle" -- This item is used to make the dog exit it's current vehicle, and only works if the dog is currently in a car. (/dcar)

-- Emotes
Lang.StartBarking = "Start Barking" -- This item is used to make the dog start barking, and only appears if the dog isn't currently barking. (/dbark)
Lang.StartBarkingDesc = "Make your police dog bark" -- This item is used to make the dog start barking, and only appears if the dog isn't currently barking. (/dbark)
Lang.StopBarking = "Stop Barking" -- This item is used to make the dog stop barking, and only appears if the dog is currently barking. (/dbark | /dogx)
Lang.StopBarkingDesc = "Stop your dog from barking" -- This item is used to make the dog stop barking, and only appears if the dog is currently barking. (/dbark | /dogx)
Lang.StartHolding = "Start Holding" -- This item is used to hold the dog between your legs, and only appears if you aren't currently holding the dog. (/dhold)
Lang.StartHoldingDesc = "Hold your dog between your knees"  -- This item is used to hold the dog between your legs, and only appears if you aren't currently holding the dog. (/dhold)
Lang.StopHolding = "Stop Holding" -- This item is used to stop holding the dog, and only appears if you are currently holding the dog. (/dhold | /dogx)
Lang.StopHoldingDesc = "Stop holding your dog" -- This item is used to stop holding the dog, and only appears if you are currently holding the dog. (/dhold | /dogx)
Lang.StartSitting = "Start Sitting" -- This item is used to make the dog start sitting, and only appears if the dog isn't currently sitting. (/dsit)
Lang.StartSittingDesc = "Make your dog sit down" -- This item is used to make the dog start sitting, and only appears if the dog isn't currently sitting. (/dsit)
Lang.StopSitting = "Stop Sitting" -- This item is used to make the dog stop sitting, and only appears if the dog is currently sitting. (/dsit | /dogx)
Lang.StopSittingDesc = "Make your dog stand up" -- This item is used to make the dog stop sitting, and only appears if the dog is currently sitting. (/dsit | /dogx)
Lang.StartLying = "Start Lying Down" -- This item is used to make the dog start lying down, and only appears if the dog isn't currently lying down. (/dlay)
Lang.StartLyingDesc = "Make your dog lie down" -- This item is used to make the dog start lying down, and only appears if the dog isn't currently lying down. (/dlay)
Lang.StopLying = "Stop Lying Down" -- This item is used to make the dog stop lying down, and only appears if the dog is currently lying down. (/dlay | /dogx)
Lang.StopLyingDesc = "Make your dog stand up" -- This item is used to make the dog stop lying down, and only appears if the dog is currently lying down. (/dlay | /dogx)

-- TP
Lang.DTP = "Teleport Dog" -- This item is used to teleport the dog to yourself.
Lang.DTPDesc = "Teleport your dog to you" -- This item is used to teleport the dog to yourself.

-- GPS
Lang.EnableGPS = "Enable GPS Blip" -- This item is used to enable the gps blip to your dog. (/dgps)
Lang.EnableGPSDesc = "Enable a blip that displays your dogs location" -- This item is used to enable the gps blip to your dog. (/dgps)
Lang.DisableGPS = "Disable GPS Blip" -- This item is used to disable the gps blip to your dog. (/dgps)
Lang.DisableGPSDesc = "Disable your dog's GPS blip" -- This item is used to disable the gps blip to your dog. (/dgps)
