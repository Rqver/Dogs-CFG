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

