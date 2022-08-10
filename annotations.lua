---@meta

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---The Database entity provides programmers a way to access SQL databases easily through scripting.
---@class Database
Database = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Subscribe for user-defined Events.
---@class Events
Events = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Calls an Event which will be triggered in all Local Packages
---@param event_name [object Object] @The Event Name to trigger the event
---@param ... [object Object] @Arguments to pass to the event (Default: nil)
function Events.Call(event_name, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Calls an Event if on Client which will be triggered in all Server Packages
---@param event_name [object Object] @The Event Name to trigger the event
---@param ... [object Object] @Arguments to pass to the event (Default: nil)
function Events.CallRemote(event_name, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Calls an Event if on Server which will be triggered in all Client's Packages of a specific Player
---@param event_name [object Object] @The Event Name to trigger the event
---@param player [object Object] @The remote player to send this event
---@param ... [object Object] @Arguments to pass to the event (Default: nil)
function Events.CallRemote(event_name, player, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Calls an Event on Server which will be triggered in all Client's Packages of all Players
---@param event_name [object Object] @The Event Name to trigger the event
---@param ... [object Object] @Arguments to pass to the event (Default: nil)
function Events.BroadcastRemote(event_name, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Subscribes for an user-created event which will be triggered for both local or remote called events
---@param event_name [object Object] @The Event Name to subscribe
---@param callback [object Object] @The callback function to execute
---@return [object Object] @the subscribed callback itself
function Events.Subscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Unsubscribes from all subscribed events in this Package with that event name, optionally passing the function to unsubscribe only that callback
---@param event_name [object Object] @The Event Name to unsubscribe
---@param callback [object Object] @The callback function to unsubscribe (Default: nil)
function Events.Unsubscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Prop represents a Dynamic Mesh which can be spawned in the world, can be grabbed around by characters and have physics.
---@class Prop : Actor, Paintable
---@overload fun(): Prop
Prop = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Retrieve Assets Data from Asset Packs.
---@class Assets
Assets = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing information about all loaded Asset Packs
---@param asset_pack_path [object Object] @The Asset Pack path to get the assets
---@return [object Object] @in the format <code>[{Name, Path, Author, Version}, ...]</code>
function Assets.GetAssetPacks(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Animation Assets Keys from an AssetPack
---@param asset_pack_path [object Object] @The Asset Pack path to get the assets
---@return [object Object] @array of strings
function Assets.GetAnimations(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Map Asset Keys from an AssetPack
---@param asset_pack_path [object Object] @The Asset Pack path to get the assets
---@return [object Object] @array of strings
function Assets.GetMaps(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Materials Asset Keys from an AssetPack
---@param asset_pack_path [object Object] @The Asset Pack path to get the assets
---@return [object Object] @array of strings
function Assets.GetMaterials(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Particle Assets Keys from an AssetPack
---@param asset_pack_path [object Object] @The Asset Pack path to get the assets
---@return [object Object] @array of strings
function Assets.GetParticles(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Sound Assets Keys from an AssetPack
---@param asset_pack_path [object Object] @The Asset Pack path to get the assets
---@return [object Object] @array of strings
function Assets.GetSounds(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Skeletal Mesh Asset Keys from an AssetPack
---@param asset_pack_path [object Object] @The Asset Pack path to get the assets
---@return [object Object] @array of strings
function Assets.GetSkeletalMeshes(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Static Mesh Assets Keys from an AssetPack
---@param asset_pack_path [object Object] @The Asset Pack path to get the assets
---@return [object Object] @array of strings
function Assets.GetStaticMeshes(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Other Assets Keys from an AssetPack
---@param asset_pack_path [object Object] @The Asset Pack path to get the assets
---@return [object Object] @array of strings
function Assets.GetOthers(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A Cable represents a Physics Constraint which joins two Actors with a rope-like visual representation between them.
---@class Cable : Actor, Paintable
---@overload fun(location: [object Object], enable_visuals: [object Object]): Cable
Cable = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Attached the beginning of this cable to another Actor at a specific bone or relative location
---@param other [object Object] 
---@param relative_location [object Object] @(Default: Vector(0, 0, 0))
---@param bone_name [object Object] @(Default: "")
function Cable:AttachStartTo(other, relative_location, bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Attached the end of this cable to another Actor at a specific bone or relative location
---@param other [object Object] 
---@param relative_location [object Object] @(Default: Vector(0, 0, 0))
---@param bone_name [object Object] @(Default: "")
function Cable:AttachEndTo(other, relative_location, bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Detaches the End of this Cable
function Cable:DetachEnd() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Detaches the Start of this Cable
function Cable:DetachStart() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Set the overall settings for this cable (visuals only)
---@param length [object Object] @Rest length of the cable. Default is 100
---@param num_segments [object Object] @How many segments the cable has. Default is 10
---@param solver_iterations [object Object] @The number of solver iterations controls how 'stiff' the cable is. Default is 0
function Cable:SetCableSettings(length, num_segments, solver_iterations) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Set the forces the cable has applied (visuals only)
---@param force [object Object] @Force vector (world space) applied to all particles in cable. Default is Vector(0, 0, 0)
---@param gravity_scale [object Object] @Scaling applied to world gravity affecting this cable. Default is 1 (Default: 1)
function Cable:SetForces(force, gravity_scale) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Physics Angular Limits of this cable
---@param swing_1_motion [object Object] @Indicates whether the Swing1 limit is used
---@param swing_2_motion [object Object] @Indicates whether the Swing2 limit is used
---@param twist_motion [object Object] @Indicates whether the Twist limit is used
---@param swing_1_limit [object Object] @Angle of movement along the XY plane. This defines the first symmetric angle of the cone (Default: 0)
---@param swing_2_limit [object Object] @Angle of movement along the XZ plane. This defines the second symmetric angle of the cone (Default: 0)
---@param twist_limit [object Object] @Symmetric angle of roll along the X-axis (Default: 0)
function Cable:SetAngularLimits(swing_1_motion, swing_2_motion, twist_motion, swing_1_limit, swing_2_limit, twist_limit) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Physics Linear Limits of this cable. If use_soft_constraint is enabled, then stiffness and damping will be used, otherwise restitution will be used.
---@param x_motion [object Object] @Indicates the linear constraint applied along the X-axis. Free implies no constraint at all. Locked implies no movement along X is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided
---@param y_motion [object Object] @Indicates the linear constraint applied along the Y-axis. Free implies no constraint at all. Locked implies no movement along Y is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided
---@param z_motion [object Object] @Indicates the linear constraint applied along theZX-axis. Free implies no constraint at all. Locked implies no movement along Z is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided
---@param limit [object Object] @The distance allowed between between the two joint reference frames. Distance applies on all axes enabled (one axis means line, two axes implies circle, three axes implies sphere) (Default: 0)
---@param restitution [object Object] @Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead (Default: 0)
---@param use_soft_constraint [object Object] @Whether we want to use a soft constraint (spring) (Default: false)
---@param stiffness [object Object] @Stiffness of the soft constraint. Only used when Soft Constraint is on (Default: 0)
---@param damping [object Object] @Damping of the soft constraint. Only used when Soft Constraint is on (Default: 0)
function Cable:SetLinearLimits(x_motion, y_motion, z_motion, limit, restitution, use_soft_constraint, stiffness, damping) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Set the rendering settings of this cable (visuals only)
---@param width [object Object] @How wide the cable geometry is. Default is 6
---@param num_sides [object Object] @Number of sides of the cable geometry. Default is 4
---@param tile_material [object Object] @How many times to repeat the material along the length of the cable. Default is 1
function Cable:SetRenderingSettings(width, num_sides, tile_material) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Actor attached to Start
---@return [object Object] @the Actor or nil
function Cable:GetAttachedStartTo() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Actor attached to End
---@return [object Object] @the Actor or nil
function Cable:GetAttachedEndTo() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---HTTP Requests Interface.
---@class HTTP
HTTP = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Makes an asynchronous HTTP Request.<br/><br/>The request will be made asynchronously and returned safetly in the same thread in the callback provided when it's done.<br/><br/><b>Note:</b> If a request is still running when unloading packages, the server will freeze until it's finished, then the package will unload.
---@param uri [object Object] @The main URI
---@param endpoint [object Object] @The endpoint (Default: /)
---@param method [object Object] @The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods'>HTTP Method</a> to be used (Default: GET)
---@param data [object Object] @Payload (Default: "")
---@param content_type [object Object] @The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types'>Content Type</a> to be used (Default: application/json)
---@param compress [object Object] @Whether or not to compress the content with gzip (Default: false)
---@param headers [object Object] @The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers'>Headers</a> to be used (Default: {})
---@param callback [object Object] @The result will be called in the format `function(status, data)` (Default: nil)
function HTTP.Request(uri, endpoint, method, data, content_type, compress, headers, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Makes a synchronous HTTP Request.<br/><br/>The request will be made synchronously and will freeze the server until it's done.
---@param uri [object Object] @The main URI
---@param endpoint [object Object] @The endpoint (Default: /)
---@param method [object Object] @The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods'>HTTP Method</a> to be used (Default: GET)
---@param data [object Object] @Payload (Default: "")
---@param content_type [object Object] @The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types'>Content Type</a> to be used (Default: application/json)
---@param compress [object Object] @Whether or not to compress the content with gzip (Default: false)
---@param headers [object Object] @The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers'>Headers</a> to be used (Default: {})
---@return [object Object] @the data in the format <code>{ Status, Data }</code>
function HTTP.RequestSync(uri, endpoint, method, data, content_type, compress, headers) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Players are Entities that represents the individual behind the mouse and keyboard. Players are spawned automatically when connected to the server.
---@class Player
Player = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Scene Capture is an Actor which captures a fully dynamic image of the scene into a Texture. It captures the scene from its view frustum, stores that view as an image, which is then used within a Material.
---@class SceneCapture : Actor
---@overload fun(location: [object Object], rotation: [object Object], width: [object Object], height: [object Object], render_rate: [object Object], view_distance: [object Object], fov_angle: [object Object]): SceneCapture
SceneCapture = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Stops or Restore Capturing
---@param freeze [object Object] 
function SceneCapture:SetFreeze(freeze) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Sets the FOV
---@param angle [object Object] 
function SceneCapture:SetFOVAngle(angle) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Change the output Texture size<br>Note: too high texture will make the capture slower and will affect game performance
---@param width [object Object] 
---@param height [object Object] 
function SceneCapture:Resize(width, height) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Set how frequent is the capture<br>Note: Setting to 0 will make it capture every frame
---@param render_rate [object Object] 
function SceneCapture:SetRenderRate(render_rate) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---A Billboard is a 2D Material that will be rendered always facing the camera.
---@class Billboard : Actor, Paintable
---@overload fun(location: [object Object], rotation: [object Object], material_asset: [object Object]): Billboard
Billboard = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Class which represents the current Package
---@class Package
Package = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Logs and formats a message in the console, with formatted arguments
---@param message [object Object] @Message to print
---@param ... [object Object] @Other arguments to format with the message using string.format (Default: nil)
function Package.Log(message, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Logs an orange warning in the console, with formatted arguments
---@param message [object Object] @Message to print
---@param ... [object Object] @Other arguments to format with the message using string.format (Default: nil)
function Package.Warn(message, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Logs a red error in the console, with formatted arguments
---@param message [object Object] @Message to print
---@param ... [object Object] @Other arguments to format with the message using string.format (Default: nil)
function Package.Error(message, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Calls an exported function from another Package
---@param package_name [object Object] @Name of the package to call
---@param function_name [object Object] @Name of the function to call from the package
---@param ... [object Object] @Arguments to pass to the function (Default: nil)
---@return [object Object] @Any return values from the called function
function Package.Call(package_name, function_name, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---'Exports' a function to be called from any other Package
---@param function_name [object Object] @Name of the function to export from the current package
---@param callback [object Object] @Function to be called by other packages
function Package.Export(function_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Includes new .lua files<br/><br/>We currently support 5 searchers, which are looked in the following order:<br/><ol><li>Relative to <code>current-file-path/</code></li><li>Relative to <code>current-package/Client/</code> or <code>current-package/Server/</code> (depending on your side)</li><li>Relative to <code>current-package/Shared/</code></li><li>Relative to <code>current-package/</code></li><li>Relative to <code>Packages/</code></li></ol>
---@param script_file [object Object] @Path to the script file to require
function Package.Require(script_file) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Includes other Package in this Package
---@param package_name [object Object] @Package to require
function Package.RequirePackage(package_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets a Persistent Value which will be saved to disk
---@param key [object Object] @Key to index data into
---@param value [object Object] @Value to set at the key
function Package.SetPersistentData(key, value) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list of all files in this package, optionally with filters
---@param path_filter [object Object] @Path filter (Default: "")
---@return [object Object] @List of directories
function Package.GetDirectories(path_filter) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list of all files in this package, optionally with filters
---@param path_filter [object Object] @Path filter (Default: "")
---@return [object Object] @List of files
function Package.GetFiles(path_filter) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gives the package name
---@return [object Object] @The package name
function Package.GetName() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gives the package path
---@return [object Object] @The package path
function Package.GetPath() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gives the package version
---@return [object Object] @The package version
function Package.GetVersion() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets all Persistent Values from the disk
---@return [object Object] @Persistent values from disk
function Package.GetPersistentData() end

---Subscribe to an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @Function to call when the event is triggered
---@return function @The callback function passed
---@overload fun(event_name: "Load", callback: fun()): fun() @Called when this package is loaded<br/><br/>This event is triggered differently depending on the situation:<br/><ul><li>When the <b>server starts</b> or you run <code>package reload all</code> the event triggers only after ALL packages are loaded.</li><li>In all other cases (<code>package load/reload</code> or <code>Package.Load/Reload</code>) the event is triggered immediately after the package is loaded/reloaded.</li></ul>
---@overload fun(event_name: "Unload", callback: fun()): fun() @Called when this package is unloaded
function Package.Subscribe(event_name, callback) end

---Unsubscribe from an event
---@param event_name string @Name of the event to unsubscribe from
---@param callback? function @Optional callback to unsubscribe (if no callback is passed then all callbacks in this Package will be unsubscribed from this event)
---@overload fun(event_name: "Load", callback: fun()) @Called when this package is loaded<br/><br/>This event is triggered differently depending on the situation:<br/><ul><li>When the <b>server starts</b> or you run <code>package reload all</code> the event triggers only after ALL packages are loaded.</li><li>In all other cases (<code>package load/reload</code> or <code>Package.Load/Reload</code>) the event is triggered immediately after the package is loaded/reloaded.</li></ul>
---@overload fun(event_name: "Unload", callback: fun()) @Called when this package is unloaded
function Package.Unsubscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Blueprint Class allows spawning any Unreal Blueprint Actor in nanos world.
---@class Blueprint : Actor, Paintable
---@overload fun(location: [object Object], rotation: [object Object], blueprint_asset: [object Object]): Blueprint
Blueprint = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Calls a Blueprint Event or Function
---@param event_name [object Object] @Event or Function name
---@param ... [object Object] @Sequence of arguments to pass to the event (Default: nil)
function Blueprint:CallBlueprintEvent(event_name, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A File represents an entry to a system file.
---@class File
---@overload fun(file_path: [object Object], truncate: [object Object]): File
File = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Returns when a file was last modified in Unix time
---@param path [object Object] @Path to file
---@return [object Object] @the last update time in unix time
function File.Time(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Creates a Directory (for every folder passed)
---@param path [object Object] @Path to folder
---@return [object Object] @if succeeded
function File.CreateDirectory(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Deletes a folder or file
---@param path [object Object] @Path to file or folder
---@return [object Object] @amount of files deleted
function File.Remove(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Verifies if a entry exists in the file system
---@param path [object Object] @Path to file or folder
---@return [object Object] @if exists
function File.Exists(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if a path is a directory
---@param path [object Object] @Path to folder
---@return [object Object] @if is a directory
function File.IsDirectory(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if a path is a file
---@param path [object Object] @Path to filey
---@return [object Object] @if is a regular file
function File.IsRegularFile(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Closes the file and destroys the entity
function File:Close() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Flushes content to the file
function File:Flush() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if the file status is End of File
---@return [object Object] @if is EOF
function File:IsEOF() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if the file status is Bad
---@return [object Object] @if status is Bad
function File:IsBad() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if the file status is Good
---@return [object Object] @if status is Good
function File:IsGood() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if the last operation has Failed
---@return [object Object] @if last operation failed
function File:HasFailed() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Reads characters from the File and returns it. Also moves the file pointer to the latest read position. Pass 0 to read the whole file
---@param length [object Object] @Length to be read from file (Default: 0)
---@return [object Object] @file data
function File:Read(length) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Reads characters from the File asynchronously.
---@param length [object Object] @Length to be read from file
---@param callback [object Object] @Callback with the file read
function File:ReadAsync(length, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Reads and returns the next file line
---@return [object Object] @file line data
function File:ReadLine() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the file pointer to a specific position
---@param position [object Object] @Position to offset the file pointer
function File:Seek(position) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Returns the size of the file
---@return [object Object] @file size
function File:Size() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Skips n (amount) positions from the current file pointer position
---@param amount [object Object] @Amount to offset the file pointer
function File:Skip(amount) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Returns the current file pointer position
---@return [object Object] @current file pointer position
function File:Tell() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Writes the Data at the current position of the file
---@param data [object Object] @Data to write to the file
function File:Write(data) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---An <b>Actor</b> is an object which can be spawned and destroyed through Lua.<br>Actors support 3D transformations such as translation (location), rotation, and scale.<br><br>In nanos world, <b>Actor</b> is the base for several entities, and all those entities share the same <b>Methods</b> and <b>Events</b> described in this page.
---@class Actor
Actor = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a table containing all Actors of the class this is called on
---@return [object Object] @copy of table containing all actors
function Actor.GetAll() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a specific Actor of this class at an index
---@param index [object Object] @the index of the Actor
---@return [object Object] @Actor at index
function Actor.GetByIndex(index) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns how many Actors of this class exist
---@return [object Object] @number of Actors of this class
function Actor.GetCount() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns an iterator with all Actors of this class to be used with <code>pairs()</code>. This is a more performant method than <code>GetAll()</code>, as it will return the iterator to access the Actors directly instead of creating and returning a copy of the Actors table.<br><br><b>Note:</b> Destroying Actors from inside a <code>GetPairs()</code> loop will cause the iterable to change size during the process. If you want to loop-and-destroy, please use <code>GetAll()</code>.
---@return [object Object] @Iterator with all Actors of this class
function Actor.GetPairs() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Applies a force in world world to this Actor (the force is applied client side, by, in most cases, the player closest to this Actor)
---@param force [object Object] 
---@param velocity_change [object Object] @Whether to ignore mass (Default: false)
function Actor:AddImpulse(force, velocity_change) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---<p>Attaches this Actor to any other Actor, optionally at a specific bone</p><ul><li><code>AttachmentRule.KeepRelative</code> will keep the current relative position/rotation if already attached.</li><li><code>AttachmentRule.KeepWorld</code> will calculate the new relative position/rotation so the Actor stays at the same position after being attached.</li><li><code>AttachmentRule.SnapToTarget</code> will set the Actor to the same position/rotation as <code>other_actor</code> (or at the bone location) and reset its relative position/rotation to zero.</li></ul><p>Setting <code>lifespan_when_detached</code> to <code>0</code> will automatically destroy this actor when detached, setting it to <code>10</code> will destroy this after 10 seconds when detached.</p>
---@param other [object Object] @Other actor to attach
---@param attachment_rule [object Object] @How to attach (Default: SnapToTarget)
---@param bone_name [object Object] @Which bone to attach to (Default: "")
---@param lifespan_when_detached [object Object] @Seconds before destroying this Actor when detached (Default: -1)
---@param use_absolute_rotation [object Object] @Whether to force attached object to use absolute rotation (will not follow parent) (Default: false)
function Actor:AttachTo(other, attachment_rule, bone_name, lifespan_when_detached, use_absolute_rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Destroys this Actor
function Actor:Destroy() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Detaches this Actor from AttachedTo Actor
function Actor:Detach() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Sets this Actor's collision type
---@param collision_type [object Object] 
function Actor:SetCollision(collision_type) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Adds a permanent force to this Actor, set to Vector(0, 0, 0) to cancel
---@param force [object Object] 
---@param is_local [object Object] @Whether to apply the force in local space (Default: true)
function Actor:SetForce(force, is_local) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Sets whether gravity is enabled on this Actor
---@param is_enabled [object Object] 
function Actor:SetGravityEnabled(is_enabled) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets whether the actor is visible or not
---@param is_visible [object Object] 
function Actor:SetVisibility(is_visible) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets whether the highlight is enabled on this Actor, and which highlight index to use
---@param is_enabled [object Object] 
---@param index [object Object] @Index to use (should be <code>0</code>, <code>1</code or <code>2</code>) (Default: 0)
function Actor:SetHighlightEnabled(is_enabled, index) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets whether the outline is enabled on this Actor, and which outline index to use
---@param is_enabled [object Object] 
---@param index [object Object] @Index to use (should be <code>0</code>, <code>1</code or <code>2</code>) (Default: 0)
function Actor:SetOutlineEnabled(is_enabled, index) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Sets the time (in seconds) before this Actor is destroyed. After this time has passed, the actor will be automatically destroyed.
---@param seconds [object Object] @Seconds before being destroyed
function Actor:SetLifeSpan(seconds) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Sets this Actor's location in the game world
---@param location [object Object] 
function Actor:SetLocation(location) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Sets this Actor's rotation in the game world
---@param rotation [object Object] 
function Actor:SetRotation(rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Sets this Actor's relative location in local space (only if this actor is attached)
---@param relative_location [object Object] 
function Actor:SetRelativeLocation(relative_location) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Sets this Actor's relative rotation in local space (only if this actor is attached)
---@param relative_rotation [object Object] 
function Actor:SetRelativeRotation(relative_rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Sets this Actor's scale
---@param scale [object Object] 
function Actor:SetScale(scale) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Player to have network authority over this Actor. This Player will be manually assigned to handle this Actor's physics and share its location with other clients. The authority assignment will still be overridden by the game automatically<br><br>Please refer to <a href="https://docs.nanos.world/docs/core-concepts/scripting/authority-concepts#network-authority">Network Authority</a> for more information
---@param player [object Object] @New player which will assume the Network Authority of this Actor (Default: nil)
function Actor:SetNetworkAuthority(player) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets a value in this Actor, which can be accessed by any package (optionally sync on clients if called from server)<br><br>Please refer to <a href="https://docs.nanos.world/docs/core-concepts/scripting/entity-values">Entity Values</a> for more information
---@param key [object Object] 
---@param value [object Object] 
---@param sync_on_clients [object Object] @Server side parameter, if enabled will sync this value with all clients (Default: false)
function Actor:SetValue(key, value, sync_on_clients) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Smoothly moves this actor to a location over a certain time
---@param location [object Object] 
---@param time [object Object] @Time to interpolate from current location to target location
---@param exp [object Object] @Exponent used to smooth interpolation. Use <code>0</code> for linear movement (Default: 0)
function Actor:TranslateTo(location, time, exp) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/authority-only.png?raw=true" height="10"> `Authority Side`
---
---Smoothly rotates this actor to an angle over a certain time
---@param rotation [object Object] 
---@param time [object Object] @Time to interpolate from current location to target location
---@param exp [object Object] @Exponent used to smooth interpolation. Use <code>0</code> for linear movement (Default: 0)
function Actor:RotateTo(rotation, time, exp) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns true if this Actor is being destroyed.<br>You can check this inside events like <code>Drop</code> to see if a Pickable is being dropped because it's going to be destroyed
---@return [object Object] 
function Actor:IsBeingDestroyed() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns true if this Actor is visible
---@return [object Object] 
function Actor:IsVisible() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns true if gravity is enabled on this Actor
---@return [object Object] 
function Actor:IsGravityEnabled() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns true if this Actor is in water
---@return [object Object] 
function Actor:IsInWater() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns true if this Actor is currently network distributed. Only actors being network distributed can have their network authority set<br>Entities have NetworkDistributed automatically disabled when: Attached, Possessed, Grabbed, Picked Up or Driving
---@return [object Object] 
function Actor:IsNetworkDistributed() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns true if this Actor is valid (i.e. wasn't destroyed and points to a valid Actor)
---@return [object Object] 
function Actor:IsValid() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets all Actors attached to this Actor
---@return [object Object] 
function Actor:GetAttachedEntities() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Actor this Actor is attached to
---@return [object Object] 
function Actor:GetAttachedTo() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Gets this Actor's bounds
---@return [object Object] @in the format <code>{"Origin", "BoxExtent", "SphereRadius"}</code>
function Actor:GetBounds() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets this Actor's collision type
---@return [object Object] 
function Actor:GetCollision() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the universal network ID of this Actor (same on both client and server)
---@return [object Object] 
function Actor:GetID() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets this Actor's location in the game world
---@return [object Object] 
function Actor:GetLocation() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets this Actor's angle in the game world
---@return [object Object] 
function Actor:GetRotation() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets this Actor's force (set by <code>SetForce()</code>)
---@return [object Object] 
function Actor:GetForce() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Returns true if the local Player is currently the Network Authority of this Actor
---@return [object Object] 
function Actor:HasNetworkAuthority() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Gets if this Actor was spawned by the client side
---@return [object Object] @false if it was spawned by the Server or true if it was spawned by the client
function Actor:HasAuthority() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets this Actor's scale
---@return [object Object] 
function Actor:GetScale() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the type of this Actor
---@return [object Object] 
function Actor:GetType() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a value stored on this Actor at the given key. Please refer to <a href="https://docs.nanos.world/docs/core-concepts/scripting/entity-values">Entity Values</a> for more information
---@param key [object Object] 
---@param fallback [object Object] @Fallback value if key doesn't exist
---@return [object Object] @Value at key or fallback if key doesn't exist
function Actor:GetValue(key, fallback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets this Actor's current velocity
---@return [object Object] 
function Actor:GetVelocity() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Adds an Unreal Actor Tag to this Actor
---@param tag [object Object] 
function Actor:AddActorTag(tag) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Removes an Unreal Actor Tag from this Actor
---@param tag [object Object] 
function Actor:RemoveActorTag(tag) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Gets all Unreal Actor Tags on this Actor
---@return [object Object] 
function Actor:GetActorTags() end

---Subscribe to an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @Function to call when the event is triggered
---@return function @The callback function passed
---@overload fun(self: Actor, event_name: "Destroy", callback: fun(self: Actor)): fun(self: Actor) @Triggered when an Actor is destroyed
---@overload fun(self: Actor, event_name: "Spawn", callback: fun(self: Actor)): fun(self: Actor) @Triggered when an Actor is spawned/created
---@overload fun(self: Actor, event_name: "ValueChange", callback: fun(self: Actor, key: [object Object], value: [object Object])): fun(self: Actor, key: [object Object], value: [object Object]) @Triggered when an Actor has a value changed with <code>:SetValue()</code>
function Actor:Subscribe(event_name, callback) end

---Unsubscribe from an event
---@param event_name string @Name of the event to unsubscribe from
---@param callback? function @Optional callback to unsubscribe (if no callback is passed then all callbacks in this Package will be unsubscribed from this event)
---@overload fun(self: Actor, event_name: "Destroy", callback: fun(self: Actor)) @Triggered when an Actor is destroyed
---@overload fun(self: Actor, event_name: "Spawn", callback: fun(self: Actor)) @Triggered when an Actor is spawned/created
---@overload fun(self: Actor, event_name: "ValueChange", callback: fun(self: Actor, key: [object Object], value: [object Object])) @Triggered when an Actor has a value changed with <code>:SetValue()</code>
function Actor:Unsubscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Canvas is an entity which you can draw onto it.
---@class Canvas
---@overload fun(is_visible: [object Object], clear_color: [object Object], auto_repaint_rate: [object Object], should_clear_before_update: [object Object], auto_resize: [object Object], width: [object Object], height: [object Object]): Canvas
Canvas = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Draws an unfilled box on the Canvas<br/></br>This method can only be called from inside <code>Update</code> event
---@param screen_position [object Object] 
---@param screen_size [object Object] 
---@param thickness [object Object] 
---@param render_color [object Object] @(Default: Color.WHITE)
function Canvas:DrawBox(screen_position, screen_size, thickness, render_color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Draws a line on the Canvas<br/></br>This method can only be called from inside <code>Update</code> event
---@param screen_position_a [object Object] 
---@param screen_position_b [object Object] 
---@param thickness [object Object] 
---@param render_color [object Object] 
function Canvas:DrawLine(screen_position_a, screen_position_b, thickness, render_color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Draws a Material on the Canvas<br/></br>This method can only be called from inside <code>Update</code> event
---@param material_path [object Object] 
---@param screen_position [object Object] 
---@param screen_size [object Object] 
---@param coordinate_position [object Object] 
---@param coordinate_size [object Object] @(Default: Vector2D(1, 1))
---@param rotation [object Object] @(Default: 0)
---@param pivot_point [object Object] @(Default: Vector2D(0.5, 0.5))
function Canvas:DrawMaterial(material_path, screen_position, screen_size, coordinate_position, coordinate_size, rotation, pivot_point) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Draws a Text on the Canvas<br/></br>This method can only be called from inside <code>Update</code> event<br/><br/>Shadow and Outline won't work properly with Transparent <code>clear_color</code>
---@param text [object Object] 
---@param screen_position [object Object] 
---@param font_type [object Object] @(Default: FontType.Roboto)
---@param font_size [object Object] @(Default: 12)
---@param text_color [object Object] @(Default: Color.WHITE)
---@param kerning [object Object] @(Default: 0)
---@param center_x [object Object] @(Default: false)
---@param center_y [object Object] @(Default: false)
---@param shadow_color [object Object] @(Default: Color.TRANSPARENT)
---@param shadow_offset [object Object] @(Default: Vector2D(1, 1))
---@param outlined [object Object] @(Default: false)
---@param outline_color [object Object] @(Default: Color.BLACK)
function Canvas:DrawText(text, screen_position, font_type, font_size, text_color, kerning, center_x, center_y, shadow_color, shadow_offset, outlined, outline_color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Draws a Texture on the Canvas<br/></br>This method can only be called from inside <code>Update</code> event
---@param texture_path [object Object] 
---@param screen_position [object Object] 
---@param screen_size [object Object] 
---@param coordinate_position [object Object] 
---@param coordinate_size [object Object] @(Default: Vector2D(1, 1))
---@param render_color [object Object] @(Default: Color.WHITE)
---@param blend_mode [object Object] @(Default: BlendMode.Opaque)
---@param rotation [object Object] @(Default: 0)
---@param pivot_point [object Object] @(Default: Vector2D(0.5, 0.5))
function Canvas:DrawTexture(texture_path, screen_position, screen_size, coordinate_position, coordinate_size, render_color, blend_mode, rotation, pivot_point) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Draws a N-Polygon on the Canvas<br/></br>This method can only be called from inside <code>Update</code> event
---@param texture_path [object Object] @Pass empty to use default white Texture
---@param screen_position [object Object] 
---@param radius [object Object] @(Default: Vector2D(1, 1))
---@param number_of_sides [object Object] @(Default: 3)
---@param render_color [object Object] @(Default: Color.WHITE)
function Canvas:DrawPolygon(texture_path, screen_position, radius, number_of_sides, render_color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Draws a fille Rect on the Canvas<br/></br>This method can only be called from inside <code>Update</code> event
---@param texture_path [object Object] @Pass empty to use default white Texture
---@param screen_position [object Object] 
---@param screen_size [object Object] 
---@param render_color [object Object] @(Default: Color.WHITE)
function Canvas:DrawRect(texture_path, screen_position, screen_size, render_color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Sets it to -1 to stop auto repainting or 0 to repaint every frame
---@param auto_repaint_rate [object Object] 
function Canvas:SetAutoRepaintRate(auto_repaint_rate) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Sets if it's visible on screen
---@param visible [object Object] 
function Canvas:SetVisible(visible) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Forces the repaint, this will trigger Update event
function Canvas:Repaint() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Clear the Canvas with a specific Color
---@param clear_color [object Object] 
function Canvas:Clear(clear_color) end

---Subscribe to an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @Function to call when the event is triggered
---@return function @The callback function passed
---@overload fun(self: Canvas, event_name: "Update", callback: fun(self: Canvas, width: [object Object], height: [object Object])): fun(self: Canvas, width: [object Object], height: [object Object]) @Called when the Canvas needs to be painted<br/><br/>You can only call <code>:Draw...()</code> methods from inside this event
function Canvas:Subscribe(event_name, callback) end

---Unsubscribe from an event
---@param event_name string @Name of the event to unsubscribe from
---@param callback? function @Optional callback to unsubscribe (if no callback is passed then all callbacks in this Package will be unsubscribed from this event)
---@overload fun(self: Canvas, event_name: "Update", callback: fun(self: Canvas, width: [object Object], height: [object Object])) @Called when the Canvas needs to be painted<br/><br/>You can only call <code>:Draw...()</code> methods from inside this event
function Canvas:Unsubscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A Trigger class is a utility class to trigger events when any Entity enters an Area.
---@class Trigger : Actor
---@overload fun(): Trigger
Trigger = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Vector composed of components (X, Y, Z) with floating point precision. Used mainly for entity position.
---@class Vector
---@field X [object Object] @X Coordinate
---@field Y [object Object] @Y Coordinate
---@field Z [object Object] @Z Coordinate
---@overload fun(X: [object Object], Y: [object Object], Z: [object Object]): Vector
Vector = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Check if the vector is equal to another vector, within specified error limits
---@param other [object Object] @The vector to compare to
---@param tolerance [object Object] @The error limits (Default: 0.000001)
---@return [object Object] @Are the vectors equal or not
function Vector:Equals(other, tolerance) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns the distance of 2 vectors
---@param other [object Object] @The vector to get the distance to
---@return [object Object] @The distance betweem the vectors
function Vector:Distance(other) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Return the squared distance of 2 vectors
---@param other [object Object] @The vector to get the squared distance to
---@return [object Object] @The squared distance betweem the vectors
function Vector:DistanceSquared(other) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns the normalized version of vector without checking for zero length
---@return [object Object] @The unsafe normal
function Vector:GetUnsafeNormal() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a normalized copy of the vector, checking it is safe to do so based on the length
---@return [object Object] @The safe normal
function Vector:GetSafeNormal() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Checks whether vector is near to zero within a specified tolerance
---@param tolerance [object Object] @The error limits (Default: 0.000001)
---@return [object Object] @If the bool is near to zero
function Vector:IsNearlyZero(tolerance) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Checks whether all components of the vector are exactly zero
---@return [object Object] @If all components of the vector are exactly zero
function Vector:IsZero() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Normalize this vector in-place if it is larger than a given tolerance. Leaves it unchanged if not
---@return [object Object] @If the vector has been modified
function Vector:Normalize() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Get the length (magnitude) of this vector
---@return [object Object] @The lenght of the vector
function Vector:Size() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Get the squared length of this vector
---@return [object Object] @The squared length of the vector
function Vector:SizeSquared() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns the orientation corresponding to the direction in which the vector points
---@return [object Object] @The orientation of the vector
function Vector:Rotation() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---<b>Pickables</b> are special Actors which can be <b>grabbed</b>, <b>held</b> and <b>used</b> by Characters.
---@class Pickable
Pickable = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Spawns and attaches a SkeletalMesh to this Pickable, the SkeletalMesh must have the same skeleton used by this Actor's mesh, and will follow all animations from it. Uses a custom ID to be used for removing it later.<br><br>For customizing the Materials specific to a mesh attached with this function, use the following syntax as the <code>parameter_name</code> in the <a href="https://docs.nanos.world/docs/scripting-reference/classes/base-classes/paintable">Base Paintable</a> methods: <code>attachable///[ATTACHABLE_ID]/[PARAMETER_NAME]</code>, where <code>[ATTACHABLE_ID]</code> is the ID of the Attachable, and <code>[PARAMETER_NAME]</code> is the name of the parameter you want to change.
---@param id [object Object] @Unique ID to assign to the SkeletalMesh
---@param skeletal_mesh_path [object Object] @Path to SkeletalMesh asset to attach
function Pickable:AddSkeletalMeshAttached(id, skeletal_mesh_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Spawns and attaches a StaticMesh to this Pickable in a Socket with a relative location and rotation. Uses a custom ID to be used for removing it later<br><br>For customizing the Materials specific to a mesh attached with this function, use the following syntax as the <code>parameter_name</code> in the <a href="https://docs.nanos.world/docs/scripting-reference/classes/base-classes/paintable">Base Paintable</a> methods: <code>attachable///[ATTACHABLE_ID]/[PARAMETER_NAME]</code>, where <code>[ATTACHABLE_ID]</code> is the ID of the Attachable, and <code>[PARAMETER_NAME]</code> is the name of the parameter you want to change.
---@param id [object Object] @Unique ID to assign to the StaticMesh
---@param static_mesh_path [object Object] @Path to StaticMesh asset to attach
---@param socket [object Object] @Bone socket to attach to (Default: "")
---@param relative_location [object Object] @Relative location (Default: Vector(0, 0, 0))
---@param relative_rotation [object Object] @Relative rotation (Default: Rotator(0, 0, 0))
function Pickable:AddStaticMeshAttached(id, static_mesh_path, socket, relative_location, relative_rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Pulls the usage of this Pickable (will start firing if this is a weapon)
---@param release_use_after [object Object] @Time in seconds to automatically release the usage (-1 will not release, 0 will release one tick after) (Default: -1)
function Pickable:PullUse(release_use_after) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Releases the usage of this Pickable (will stop firing if this is a weapon)
function Pickable:ReleaseUse() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes, if it exists, a SkeletalMesh from this Pickable given its custom ID
---@param id [object Object] @Unique ID of the SkeletalMesh to remove
function Pickable:RemoveSkeletalMeshAttached(id) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes, if it exists, a StaticMesh from this Pickable given its custom ID
---@param id [object Object] @Unique ID of the StaticMesh to remove
function Pickable:RemoveStaticMeshAttached(id) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Attachment Settings for this Pickable (how it attaches to the Character when Picking up)
---@param relative_location [object Object] @Location relative to the Socket
---@param relative_rotation [object Object] @Rotation relative to the Socket (Default: Rotator(0, 0, 0))
---@param socket [object Object] @Character Socket to attach to when picked up (Default: hand_r_socket)
function Pickable:SetAttachmentSettings(relative_location, relative_rotation, socket) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the crosshair material for this Pickable
---@param material_asset [object Object] @Asset path to the crosshair material
function Pickable:SetCrosshairMaterial(material_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Pickable can be picked up from ground by the player
---@param is_pickable [object Object] 
function Pickable:SetPickable(is_pickable) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the name of the asset this Pickable uses
---@return [object Object] 
function Pickable:GetAssetName() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Character, if it exists, that's holding this Pickable
---@return [object Object] 
function Pickable:GetHandler() end

---Subscribe to an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @Function to call when the event is triggered
---@return function @The callback function passed
---@overload fun(self: Pickable, event_name: "Drop", callback: fun(self: Pickable, character: [object Object], was_triggered_by_player: [object Object])): fun(self: Pickable, character: [object Object], was_triggered_by_player: [object Object]) @When a Character drops this Pickable
---@overload fun(self: Pickable, event_name: "Hit", callback: fun(self: Pickable, impact_force: [object Object], normal_impulse: [object Object], impact_location: [object Object], velocity: [object Object])): fun(self: Pickable, impact_force: [object Object], normal_impulse: [object Object], impact_location: [object Object], velocity: [object Object]) @When this Pickable hits something
---@overload fun(self: Pickable, event_name: "Interact", callback: fun(self: Pickable, character: [object Object]): [object Object]): fun(self: Pickable, character: [object Object]): [object Object] @Triggered when a Character interacts with this Pickable (i.e. tries to pick it up)
---@overload fun(self: Pickable, event_name: "PickUp", callback: fun(self: Pickable, character: [object Object])): fun(self: Pickable, character: [object Object]) @Triggered When a Character picks this up
---@overload fun(self: Pickable, event_name: "PullUse", callback: fun(self: Pickable, character: [object Object])): fun(self: Pickable, character: [object Object]) @Triggered when a Character presses the use button for this Pickable (i.e. clicks left mouse button with this equipped)
---@overload fun(self: Pickable, event_name: "ReleaseUse", callback: fun(self: Pickable, character: [object Object])): fun(self: Pickable, character: [object Object]) @Triggered when a Character releases the use button for this Pickable (i.e. releases left mouse button with this equipped)
function Pickable:Subscribe(event_name, callback) end

---Unsubscribe from an event
---@param event_name string @Name of the event to unsubscribe from
---@param callback? function @Optional callback to unsubscribe (if no callback is passed then all callbacks in this Package will be unsubscribed from this event)
---@overload fun(self: Pickable, event_name: "Drop", callback: fun(self: Pickable, character: [object Object], was_triggered_by_player: [object Object])) @When a Character drops this Pickable
---@overload fun(self: Pickable, event_name: "Hit", callback: fun(self: Pickable, impact_force: [object Object], normal_impulse: [object Object], impact_location: [object Object], velocity: [object Object])) @When this Pickable hits something
---@overload fun(self: Pickable, event_name: "Interact", callback: fun(self: Pickable, character: [object Object]): [object Object]) @Triggered when a Character interacts with this Pickable (i.e. tries to pick it up)
---@overload fun(self: Pickable, event_name: "PickUp", callback: fun(self: Pickable, character: [object Object])) @Triggered When a Character picks this up
---@overload fun(self: Pickable, event_name: "PullUse", callback: fun(self: Pickable, character: [object Object])) @Triggered when a Character presses the use button for this Pickable (i.e. clicks left mouse button with this equipped)
---@overload fun(self: Pickable, event_name: "ReleaseUse", callback: fun(self: Pickable, character: [object Object])) @Triggered when a Character releases the use button for this Pickable (i.e. releases left mouse button with this equipped)
function Pickable:Unsubscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A StaticMesh entity represents a Mesh which can be spawned in the world, can't move and is more optimized for using in decorating the world.
---@class StaticMesh : Actor, Paintable
---@overload fun(location: [object Object], rotation: [object Object], static_mesh_asset: [object Object], collision_type: [object Object]): StaticMesh
StaticMesh = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Asset path mesh used
---@return [object Object] @asset path
function StaticMesh:GetMesh() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Gets if this StaticMesh is from the Level
---@return [object Object] @if this StaticMesh is from the level
function StaticMesh:IsFromLevel() end

---Subscribe to an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @Function to call when the event is triggered
---@return function @The callback function passed
---@overload fun(self: StaticMesh, event_name: "Destroy", callback: fun(self: StaticMesh)): fun(self: StaticMesh) @Triggered when an Actor is destroyed
---@overload fun(self: StaticMesh, event_name: "Spawn", callback: fun(self: StaticMesh)): fun(self: StaticMesh) @Triggered when an Actor is spawned/created
---@overload fun(self: StaticMesh, event_name: "ValueChange", callback: fun(self: StaticMesh, key: [object Object], value: [object Object])): fun(self: StaticMesh, key: [object Object], value: [object Object]) @Triggered when an Actor has a value changed with <code>:SetValue()</code>
---@overload fun(self: StaticMesh, event_name: "TakeDamage", callback: fun(self: StaticMesh, damage: [object Object], bone: [object Object], type: [object Object], from_direction: [object Object], instigator: [object Object], causer: [object Object])): fun(self: StaticMesh, damage: [object Object], bone: [object Object], type: [object Object], from_direction: [object Object], instigator: [object Object], causer: [object Object]) @Called when a StaticMesh takes Damage
function StaticMesh:Subscribe(event_name, callback) end

---Unsubscribe from an event
---@param event_name string @Name of the event to unsubscribe from
---@param callback? function @Optional callback to unsubscribe (if no callback is passed then all callbacks in this Package will be unsubscribed from this event)
---@overload fun(self: StaticMesh, event_name: "Destroy", callback: fun(self: StaticMesh)) @Triggered when an Actor is destroyed
---@overload fun(self: StaticMesh, event_name: "Spawn", callback: fun(self: StaticMesh)) @Triggered when an Actor is spawned/created
---@overload fun(self: StaticMesh, event_name: "ValueChange", callback: fun(self: StaticMesh, key: [object Object], value: [object Object])) @Triggered when an Actor has a value changed with <code>:SetValue()</code>
---@overload fun(self: StaticMesh, event_name: "TakeDamage", callback: fun(self: StaticMesh, damage: [object Object], bone: [object Object], type: [object Object], from_direction: [object Object], instigator: [object Object], causer: [object Object])) @Called when a StaticMesh takes Damage
function StaticMesh:Unsubscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Decals are Materials that are projected onto meshes in your level, including Static Meshes and Skeletal Meshes.
---@class Decal : Actor, Paintable
---@overload fun(location: [object Object], rotation: [object Object], material_asset: [object Object], size: [object Object], lifespan: [object Object], fade_screen_size: [object Object]): Decal
Decal = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A Melee represents an Entity which can be Pickable by a Character and can be used to melee attack, Charactes can hold it with hands with pre-defined handling modes.
---@class Melee : Actor, Paintable, Pickable
---@overload fun(): Melee
Melee = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Particle Entity.
---@class Particle : Actor
---@overload fun(): Particle
Particle = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A color composed of components (R, G, B, A) with floating point precision.
---@class Color
---@field R [object Object] @Red color percentage (0-1)
---@field G [object Object] @Green color percentage (0-1)
---@field B [object Object] @Blue color percentage (0-1)
---@field A [object Object] @Alpha transparency percentage (0-1)
---@overload fun(R: [object Object], G: [object Object], B: [object Object], A: [object Object]): Color
Color = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a random color from Color Palette
---@param includes_black [object Object] @Includes blacks in the scope (Default: true)
---@return [object Object] @Random color from Color Palette
function Color.RandomPalette(includes_black) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a random color from all color scope
---@return [object Object] @Random color from all color scope
function Color.Random() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns the color from 0-255 range values
---@param r [object Object] @Red (Default: 0)
---@param g [object Object] @Green (Default: 0)
---@param b [object Object] @Blue (Default: 0)
---@param a [object Object] @Alpha (Default: 0)
---@return [object Object] @Final Color
function Color.FromRGBA(r, g, b, a) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a color from the CYMK format
---@param c [object Object] @Cyan (Default: 0)
---@param y [object Object] @Yellow (Default: 0)
---@param m [object Object] @Magenta (Default: 0)
---@param k [object Object] @Black (Default: 0)
---@param a [object Object] @Alpha (Default: 0)
---@return [object Object] @Final Color
function Color.FromCYMK(c, y, m, k, a) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a color from the HSL format
---@param h [object Object] @Hue (Default: 0)
---@param s [object Object] @Saturation (Default: 0)
---@param l [object Object] @Lightness (Default: 0)
---@return [object Object] @Final Color
function Color.FromHSL(h, s, l) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a color from the HSV format
---@param h [object Object] @Hue (Default: 0)
---@param s [object Object] @Saturation (Default: 0)
---@param v [object Object] @Value (Default: 0)
---@return [object Object] @Final Color
function Color.FromHSV(h, s, v) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a color from the Hexadecimal format
---@param hex [object Object] @Hexadecimal
---@return [object Object] @Final Color
function Color.FromHEX(hex) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Hexadecimal representation of this Color
---@return [object Object] @Hexadecimal representation of this Color
function Color:ToHex() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Floating point Quaternion that can represent a rotation about an axis in 3-D space
---@class Quat
---@field X [object Object] @The quaternion's X-component
---@field Y [object Object] @The quaternion's Y-component
---@field Z [object Object] @The quaternion's Z-component
---@field W [object Object] @The quaternion's W-component
---@overload fun(X: [object Object], Y: [object Object], Z: [object Object], W: [object Object]): Quat
Quat = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---In place normalize this Quaternion
function Quat:Normalize() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Get the Rotator representation of this Quaternion
---@return [object Object] @Rotator representation of this Quaternion
function Quat:Rotator() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns the inverse of this Quaternion
---@return [object Object] @Inverse of this Quaternion
function Quat:Inverse() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Class for spawning a dynamic Web Browser
---@class WebUI
---@overload fun(): WebUI
WebUI = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Class for playing in-game 2D and 3D sounds
---@class Sound : Actor
---@overload fun(): Sound
Sound = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Vehicles are wheeled entities which Characters can possesses and drive.
---@class Vehicle : Actor, Paintable
---@overload fun(): Vehicle
Vehicle = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Chad Grenade
---@class Grenade : Actor, Paintable, Pickable
---@overload fun(): Grenade
Grenade = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Vector2D composed of components (X, Y) with floating point precision. Used mainly for HUD and Drawing on screen.
---@class Vector2D
---@field X [object Object] @X Coordinate
---@field Y [object Object] @Y Coordinate
---@overload fun(X: [object Object], Y: [object Object]): Vector2D
Vector2D = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Weapons are entities with firing, reloading and aiming functionalities.<br/><br/>They are fully customizable, all pieces of the weapon can be changed with immense possibility of creation.
---@class Weapon : Actor, Paintable, Pickable
---@overload fun(location: [object Object], rotation: [object Object], asset: [object Object], collision_type: [object Object], gravity_enabled: [object Object]): Weapon
Weapon = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Forces this Weapon to reload (only if being handled by a Character)
function Weapon:Reload() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets this Weapon's Ammo in the Bag
---@param new_ammo [object Object] 
function Weapon:SetAmmoBag(new_ammo) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets this Weapon's Ammo in the Clip
---@param new_ammo [object Object] 
function Weapon:SetAmmoClip(new_ammo) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Aux for setting and configuring ammo
---@param ammo_clip [object Object] 
---@param ammo_bag [object Object] 
---@param ammo_to_reload [object Object] @(Default: ammo_clip)
---@param clip_capacity [object Object] @(Default: ammo_clip)
function Weapon:SetAmmoSettings(ammo_clip, ammo_bag, ammo_to_reload, clip_capacity) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Animation played by the Weapon when Firing
---@param animation_asset_path [object Object] 
---@param play_rate [object Object] @(Default: 1)
function Weapon:SetAnimationFire(animation_asset_path, play_rate) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Animation played by the Character when Firing
---@param animation_path [object Object] 
---@param play_rate [object Object] @(Default: 1)
function Weapon:SetAnimationCharacterFire(animation_path, play_rate) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Set the Bullet Color<br/><br/>Only has effect if using Bullet Trail particle P_Bullet_Trail or if you particle has the Color parameter
---@param color [object Object] 
function Weapon:SetBulletColor(color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if the Weapon auto reloads when ammo empties
---@param auto_reload [object Object] 
function Weapon:SetAutoReload(auto_reload) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Aux for setting and configuring the Bullet
---@param bullet_count [object Object] @1 for common weapons<br/>> 1 for shotguns
---@param bullet_max_distance [object Object] 
---@param bullet_velocity [object Object] @Visuals only
---@param bullet_color [object Object] 
function Weapon:SetBulletSettings(bullet_count, bullet_max_distance, bullet_velocity, bullet_color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Speed of shots
---@param cadence [object Object] @1 shot at each <code>cadence</code> second
function Weapon:SetCadence(cadence) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Capacity of the Weapon's clip
---@param clip [object Object] 
function Weapon:SetClipCapacity(clip) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Base Weapon's Damage<br/><br/>This will be multiplied by multiplier factors when hitting specific bones
---@param damage [object Object] 
function Weapon:SetDamage(damage) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets how the Character grabs this Weapon
---@param mode [object Object] 
function Weapon:SetHandlingMode(mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Left Hand Offset
---@param location [object Object] 
---@param rotation [object Object] 
function Weapon:SetLeftHandTransform(location, rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Set the mesh used when the Character reloads the weapon.<br/><br/>Will drop this Mesh as an animation effect.
---@param static_mesh_asset_path [object Object] 
---@param magazine_mesh_hide_bone [object Object] @Weapon bone to hide when reloading it (Default: b_gun_mag)
function Weapon:SetMagazineMesh(static_mesh_asset_path, magazine_mesh_hide_bone) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Particle of the Bullet flying
---@param particle_asset_path [object Object] 
function Weapon:SetParticlesBulletTrail(particle_asset_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Particle of the Fire Blast in the muzzle
---@param particle_asset_path [object Object] 
function Weapon:SetParticlesBarrel(particle_asset_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Particle of the empty bullet flying from the weapon when shooting
---@param particle_asset_path [object Object] 
function Weapon:SetParticlesShells(particle_asset_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Set the Offset of Right Hand. To position relative to the camera.
---@param offset [object Object] 
function Weapon:SetRightHandOffset(offset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---The FOV multiplier when ADS
---@param multiplier [object Object] 
function Weapon:SetSightFOVMultiplier(multiplier) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Offset applied to align player's head to weapon's sight and rotation applied on the weapon when ADS
---@param location [object Object] 
---@param rotation [object Object] 
function Weapon:SetSightTransform(location, rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sound when weapon has not bullet and try to shoot
---@param sound_asset_path [object Object] 
---@param volume [object Object] @(Default: 1)
---@param pitch [object Object] @(Default: 1)
function Weapon:SetSoundDry(sound_asset_path, volume, pitch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sound when Loading a magazine
---@param sound_asset_path [object Object] 
---@param volume [object Object] @(Default: 1)
---@param pitch [object Object] @(Default: 1)
function Weapon:SetSoundLoad(sound_asset_path, volume, pitch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sound when Unloading a magazine
---@param sound_asset_path [object Object] 
---@param volume [object Object] @(Default: 1)
---@param pitch [object Object] @(Default: 1)
function Weapon:SetSoundUnload(sound_asset_path, volume, pitch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sound when Zooming
---@param sound_asset_path [object Object] 
---@param volume [object Object] @(Default: 1)
---@param pitch [object Object] @(Default: 1)
function Weapon:SetSoundZooming(sound_asset_path, volume, pitch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sound when Shooting
---@param sound_asset_path [object Object] 
---@param volume [object Object] @(Default: 1)
---@param pitch [object Object] @(Default: 1)
function Weapon:SetSoundFire(sound_asset_path, volume, pitch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sound when Aiming
---@param sound_asset_path [object Object] 
---@param volume [object Object] @(Default: 1)
---@param pitch [object Object] @(Default: 1)
function Weapon:SetSoundAim(sound_asset_path, volume, pitch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sound when firing with only having X remaining bullets in the magazine, useful for last shot 'ping' or sound when low on bullets
---@param sound_asset_path [object Object] 
---@param remaining_bullets_count [object Object] @The amount of remaining bullet to start playing this sound (Default: 1)
function Weapon:SetSoundFireLastBullets(sound_asset_path, remaining_bullets_count) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Base Weapon's Spread
---@param spread [object Object] @the higher the less precision - recommended value: 20
function Weapon:SetSpread(spread) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Base Weapon's Recoil
---@param recoil [object Object] @0 means no Recoil, default is 1
function Weapon:SetRecoil(recoil) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if the Weapon can hold to keep firing and if it needs to release to fire
---@param can_hold_use [object Object] 
---@param hold_release_use [object Object] 
function Weapon:SetUsageSettings(can_hold_use, hold_release_use) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets how the bullet will pass through walls
---@param max_distance [object Object] @Max distance to pass through another wall
---@param damage_multiplier [object Object] @Damage given if wallbangged
function Weapon:SetWallbangSettings(max_distance, damage_multiplier) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets this Weapon's Ammo Bag
---@return [object Object] 
function Weapon:GetAmmoBag() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets this Weapon's Ammo Clip
---@return [object Object] 
function Weapon:GetAmmoClip() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetAmmoToReload() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetHandlingMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetAnimationCharacterFire() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetAnimationFire() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetMagazineMesh() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetParticlesBulletTrail() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetParticlesShells() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSoundDry() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSoundLoad() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSoundUnload() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSoundZooming() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSoundAim() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSoundFire() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetCanHoldUse() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetHoldReleaseUse() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetBulletCount() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetBulletColor() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetCadence() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetClipCapacity() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetDamage() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetRightHandOffset() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetLeftHandLocation() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetLeftHandRotation() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSightLocation() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSightRotation() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSightFOVMultiplier() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetSpread() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---
---@return [object Object] 
function Weapon:GetRecoil() end

---Subscribe to an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @Function to call when the event is triggered
---@return function @The callback function passed
---@overload fun(self: Weapon, event_name: "Destroy", callback: fun(self: Weapon)): fun(self: Weapon) @Triggered when an Actor is destroyed
---@overload fun(self: Weapon, event_name: "Spawn", callback: fun(self: Weapon)): fun(self: Weapon) @Triggered when an Actor is spawned/created
---@overload fun(self: Weapon, event_name: "ValueChange", callback: fun(self: Weapon, key: [object Object], value: [object Object])): fun(self: Weapon, key: [object Object], value: [object Object]) @Triggered when an Actor has a value changed with <code>:SetValue()</code>
---@overload fun(self: Weapon, event_name: "Drop", callback: fun(self: Weapon, character: [object Object], was_triggered_by_player: [object Object])): fun(self: Weapon, character: [object Object], was_triggered_by_player: [object Object]) @When a Character drops this Pickable
---@overload fun(self: Weapon, event_name: "Hit", callback: fun(self: Weapon, impact_force: [object Object], normal_impulse: [object Object], impact_location: [object Object], velocity: [object Object])): fun(self: Weapon, impact_force: [object Object], normal_impulse: [object Object], impact_location: [object Object], velocity: [object Object]) @When this Pickable hits something
---@overload fun(self: Weapon, event_name: "Interact", callback: fun(self: Weapon, character: [object Object]): [object Object]): fun(self: Weapon, character: [object Object]): [object Object] @Triggered when a Character interacts with this Pickable (i.e. tries to pick it up)
---@overload fun(self: Weapon, event_name: "PickUp", callback: fun(self: Weapon, character: [object Object])): fun(self: Weapon, character: [object Object]) @Triggered When a Character picks this up
---@overload fun(self: Weapon, event_name: "PullUse", callback: fun(self: Weapon, character: [object Object])): fun(self: Weapon, character: [object Object]) @Triggered when a Character presses the use button for this Pickable (i.e. clicks left mouse button with this equipped)
---@overload fun(self: Weapon, event_name: "ReleaseUse", callback: fun(self: Weapon, character: [object Object])): fun(self: Weapon, character: [object Object]) @Triggered when a Character releases the use button for this Pickable (i.e. releases left mouse button with this equipped)
---@overload fun(self: Weapon, event_name: "Fire", callback: fun(self: Weapon, shooter: [object Object])): fun(self: Weapon, shooter: [object Object]) @Triggered when Weapon fires (this will be triggered for each shot)
---@overload fun(self: Weapon, event_name: "Reload", callback: fun(self: Weapon, character: [object Object], ammo_to_reload: [object Object])): fun(self: Weapon, character: [object Object], ammo_to_reload: [object Object]) @When a Weapon is reloaded, optionally by a Character
---@overload fun(self: Weapon, event_name: "AmmoClipChanged", callback: fun(self: Weapon, old_ammo_clip: [object Object], new_ammo_clip: [object Object])): fun(self: Weapon, old_ammo_clip: [object Object], new_ammo_clip: [object Object]) @When the Ammo Clip is changed, by reloading or manually setting through scripting
---@overload fun(self: Weapon, event_name: "AmmoBagChanged", callback: fun(self: Weapon, old_ammo_clip: [object Object], new_ammo_clip: [object Object])): fun(self: Weapon, old_ammo_clip: [object Object], new_ammo_clip: [object Object]) @When the Ammo Bag is changed, by reloading or manually setting through scripting
function Weapon:Subscribe(event_name, callback) end

---Unsubscribe from an event
---@param event_name string @Name of the event to unsubscribe from
---@param callback? function @Optional callback to unsubscribe (if no callback is passed then all callbacks in this Package will be unsubscribed from this event)
---@overload fun(self: Weapon, event_name: "Destroy", callback: fun(self: Weapon)) @Triggered when an Actor is destroyed
---@overload fun(self: Weapon, event_name: "Spawn", callback: fun(self: Weapon)) @Triggered when an Actor is spawned/created
---@overload fun(self: Weapon, event_name: "ValueChange", callback: fun(self: Weapon, key: [object Object], value: [object Object])) @Triggered when an Actor has a value changed with <code>:SetValue()</code>
---@overload fun(self: Weapon, event_name: "Drop", callback: fun(self: Weapon, character: [object Object], was_triggered_by_player: [object Object])) @When a Character drops this Pickable
---@overload fun(self: Weapon, event_name: "Hit", callback: fun(self: Weapon, impact_force: [object Object], normal_impulse: [object Object], impact_location: [object Object], velocity: [object Object])) @When this Pickable hits something
---@overload fun(self: Weapon, event_name: "Interact", callback: fun(self: Weapon, character: [object Object]): [object Object]) @Triggered when a Character interacts with this Pickable (i.e. tries to pick it up)
---@overload fun(self: Weapon, event_name: "PickUp", callback: fun(self: Weapon, character: [object Object])) @Triggered When a Character picks this up
---@overload fun(self: Weapon, event_name: "PullUse", callback: fun(self: Weapon, character: [object Object])) @Triggered when a Character presses the use button for this Pickable (i.e. clicks left mouse button with this equipped)
---@overload fun(self: Weapon, event_name: "ReleaseUse", callback: fun(self: Weapon, character: [object Object])) @Triggered when a Character releases the use button for this Pickable (i.e. releases left mouse button with this equipped)
---@overload fun(self: Weapon, event_name: "Fire", callback: fun(self: Weapon, shooter: [object Object])) @Triggered when Weapon fires (this will be triggered for each shot)
---@overload fun(self: Weapon, event_name: "Reload", callback: fun(self: Weapon, character: [object Object], ammo_to_reload: [object Object])) @When a Weapon is reloaded, optionally by a Character
---@overload fun(self: Weapon, event_name: "AmmoClipChanged", callback: fun(self: Weapon, old_ammo_clip: [object Object], new_ammo_clip: [object Object])) @When the Ammo Clip is changed, by reloading or manually setting through scripting
---@overload fun(self: Weapon, event_name: "AmmoBagChanged", callback: fun(self: Weapon, old_ammo_clip: [object Object], new_ammo_clip: [object Object])) @When the Ammo Bag is changed, by reloading or manually setting through scripting
function Weapon:Unsubscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Base class for all Paintable entities. This class provides customization for materials, exposing common functions to allow you to set custom material parameters, including loading textures from disk.
---@class Paintable
Paintable = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the material at the specified index of this Actor
---@param material_path [object Object] @The new Material to apply
---@param index [object Object] @The index to apply<br/>-1 means all indices (Default: -1)
function Paintable:SetMaterial(material_path, index) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Sets the material at the specified index of this Actor to a Canvas object
---@param canvas [object Object] @The Canvas object to use as a materia
---@param index [object Object] @The index to apply<br/>-1 means all indices (Default: -1)
function Paintable:SetMaterialFromCanvas(canvas, index) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Sets the material at the specified index of this Actor to a SceneCapture object
---@param scene_capture [object Object] @The SceneCapture object to use as a material
---@param index [object Object] @The index to apply<br/>-1 means all indices (Default: -1)
function Paintable:SetMaterialFromSceneCapture(scene_capture, index) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Sets the material at the specified index of this Actor to a WebUI object
---@param webui [object Object] @The WebUI object to use as a material
---@param index [object Object] @The index to apply<br/>-1 means all indices (Default: -1)
function Paintable:SetMaterialFromWebUI(webui, index) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Resets the material from the specified index to the original one
---@param index [object Object] @The index to apply<br/>-1 means all indices (Default: -1)
function Paintable:ResetMaterial(index) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets a Color parameter in this Actor's material
---@param parameter_name [object Object] @The name of the material parameter
---@param color [object Object] @The value to set
function Paintable:SetMaterialColorParameter(parameter_name, color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets a Scalar parameter in this Actor's material
---@param parameter_name [object Object] @The name of the material parameter
---@param scalar [object Object] @The value to set
function Paintable:SetMaterialScalarParameter(parameter_name, scalar) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets a texture parameter in this Actor's material to an image on disk
---@param parameter_name [object Object] @The name of the material parameter
---@param texture_path [object Object] @The path to the texture
function Paintable:SetMaterialTextureParameter(parameter_name, texture_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets a Vector parameter in this Actor's material
---@param parameter_name [object Object] @The name of the material parameter
---@param vector [object Object] @The value to set
function Paintable:SetMaterialVectorParameter(parameter_name, vector) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Overrides this Actor's Physical Material with a new one
---@param physical_material_path [object Object] @The Physical Material to override
function Paintable:SetPhysicalMaterial(physical_material_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Matrix is an array of numbers this can be used for geometric and positional calculations
---@class Matrix
---@overload fun(rotation: [object Object], origin: [object Object]): Matrix
Matrix = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Transform the vector with the matrix
---@param vector [object Object] @The vector who will be transformed
---@return [object Object] @The new vector
function Matrix:TransformVector(vector) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Transform the vector with the matrix
---@param vector [object Object] @The vector4 who will be transformed
---@return [object Object] @The new vector4
function Matrix:TransformVector4(vector) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns a new matrix transposed (https://en.wikipedia.org/wiki/Transpose)
---@return [object Object] @The matrix transpoosed
function Matrix:GetTransposed() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Create custom keybindings and retrieve input information.
---@class Input
Input = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Binds a function to an Input defined using <code>Register</code> or from the game
---@param binding_name [object Object] @The keybinding id
---@param input_event [object Object] @Which event to register (Released/Pressed)
---@param callback [object Object] @The function to trigger
function Input.Bind(binding_name, input_event, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Unbinds all Input functions related to the given binding_name and input_event
---@param binding_name [object Object] @The keybinding id
---@param input_event [object Object] @Which event to register (Released/Pressed)
function Input.Unbind(binding_name, input_event) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Registers a keybinding to a default key
---@param binding_name [object Object] @The keybinding id
---@param key_name [object Object] 
function Input.Register(binding_name, key_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Unregisters a keybinding
---@param binding_name [object Object] @The keybinding id
---@param key_name [object Object] 
function Input.Unregister(binding_name, key_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Gets the icon path of a key
---@param key_name [object Object] @(Default: "")
---@param dark_mode [object Object] @(Default: false)
---@return [object Object] 
function Input.GetKeyIcon(key_name, dark_mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Returns the key bound to a keybinding
---@param binding_name [object Object] @The keybinding id
---@return [object Object] 
---@return [object Object] 
function Input.GetMappedKey(binding_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Resets all bound functions by this Package
function Input.ResetBindings() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Returns a table with all Scripting KeyBindings
---@return [object Object] 
function Input.GetScriptingKeyBindings() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Text Render class is useful for spawning Texts in 3D world, you can even attach it to other entities.
---@class TextRender : Actor, Paintable
---@overload fun(location: [object Object], rotation: [object Object], text: [object Object], scale: [object Object], color: [object Object], font_type: [object Object], align_camera: [object Object]): TextRender
TextRender = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Color (Internally this will call the <code>SetMaterialColorParameter("Tint", color)</code> method)
---@param color [object Object] 
function TextRender:SetColor(color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Font
---@param font_type [object Object] 
function TextRender:SetFont(font_type) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Freeze mesh rebuild, to avoid unnecessary mesh rebuilds when setting a few properties together
---@param freeze [object Object] 
function TextRender:SetFreeze(freeze) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Glyph representation settings to generate the 3D Mesh for this text render
---@param extrude [object Object] @(Default: 0)
---@param level [object Object] @(Default: 0)
---@param bevel_type [object Object] @(Default: TextRenderBevelType.Convex)
---@param bevel_segments [object Object] @(Default: 8)
---@param outline [object Object] @(Default: false)
function TextRender:SetGlyphSettings(extrude, level, bevel_type, bevel_segments, outline) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Max Size of the TextRender, optionally scaling it proportionally
---@param max_width [object Object] @(Default: 0)
---@param max_height [object Object] @(Default: 0)
---@param scale_proportionally [object Object] @(Default: true)
function TextRender:SetMaxSize(max_width, max_height, scale_proportionally) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Text
---@param text [object Object] 
function TextRender:SetText(text) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Text & Font settings for this text render
---@param kerning [object Object] @(Default: 0)
---@param line_spacing [object Object] @(Default: 0)
---@param word_spacing [object Object] @(Default: 0)
---@param horizontal_alignment [object Object] @(Default: TextRenderHorizontalAlignment.Center)
---@param vertical_alignment [object Object] @(Default: 0TextRenderVerticalAlignment.Center)
function TextRender:SetTextSettings(kerning, line_spacing, word_spacing, horizontal_alignment, vertical_alignment) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Characters represents Actors which can be possessed, can move and interact with world. They are the default Skeletal Mesh Character built for nanos world.
---@class Character : Actor, Paintable
---@overload fun(location: [object Object], rotation: [object Object], skeletal_mesh: [object Object], collision_type: [object Object], gravity_enabled: [object Object], health/max_health: [object Object], death_sound: [object Object], pain_sound: [object Object]): Character
Character = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Do damage to a character, will trigger all related events and apply modified damage based on bone. Also will apply impulse if it's a heavy explosion
---@param damage [object Object] 
---@param bone_name [object Object] @(Default: "")
---@param damage_type [object Object] @(Default: DamageType.Shot)
---@param from_direction [object Object] @(Default: Vector(0, 0, 0))
---@param instigator [object Object] @The player which caused the damage (Default: nil)
---@param causer [object Object] @The object which caused the damage (Default: nil)
---@return [object Object] @the damage applied
function Character:ApplyDamage(damage, bone_name, damage_type, from_direction, instigator, causer) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Spawns and Attaches a SkeletalMesh into this Character, the SkeletalMesh must have the same Skeletal used by the Character Mesh, and will follow all animations from it. Uses a custom ID to be used for removing it further.<br/><br/>For customizing the Materials specific of a SkeletalMeshAttached, please use the following syntax in the Paintable methods: <code>attachable///[ATTACHABLE_ID]/[PARAMETER_NAME]</code>, where [ATTACHABLE_ID] is the ID of the Attachable, and [PARAMETER_NAME] is the name of the parameter you want to change.
---@param id [object Object] @Used further for removing or applying material settings on it
---@param skeletal_mesh_asset [object Object] @(Default: "")
function Character:AddSkeletalMeshAttached(id, skeletal_mesh_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Spawns and Attaches a StaticMesh into this Character in a Socket with relative Location and Rotation. Uses a custom ID to be used for removing it further<br/><br/>For customizing the Materials specific of a StaticMeshAttached, please use the following syntax as the <code>parameter_name</codein the Paintable methods: <code>attachable///[ATTACHABLE_ID]/[PARAMETER_NAME]</code>, where [ATTACHABLE_ID] is the ID of the Attachable, and [PARAMETER_NAME] is the name of the parameter you want to change.
---@param id [object Object] @Used further for removing or applying material settings on it
---@param static_mesh_asset [object Object] @(Default: "")
---@param socket [object Object] @(Default: "")
---@param relative_location [object Object] @(Default: Vector(0, 0, 0))
---@param relative_rotation [object Object] @(Default: Rotator(0, 0, 0))
function Character:AddStaticMeshAttached(id, static_mesh_asset, socket, relative_location, relative_rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Drops any Pickable the Character is holding
function Character:Drop() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Enters the Vehicle at Seat (0 - Driver)
---@param vehicle [object Object] 
---@param seat [object Object] @(Default: 0)
function Character:EnterVehicle(vehicle, seat) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Gives a Prop to the Character
---@param prop [object Object] 
function Character:GrabProp(prop) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Hides a bone of this Character.<br/><br/>Check <a href='character.mdx#characters-skeleton-bone-names'>Bone Names List</a>
---@param bone_name [object Object] @Bone to hide (Default: "")
function Character:HideBone(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---UnHide a bone of this Character.<br/><br/>Check <a href='character.mdx#characters-skeleton-bone-names'>Bone Names List</a>
---@param bone_name [object Object] @Bone to unhide
function Character:UnHideBone(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if a bone is hidden
---@param bone_name [object Object] @Bone to check
---@return [object Object] @if the bone is hidden
function Character:IsBoneHidden(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Triggers this Character to jump
function Character:Jump() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Leaves the current Vehicle
function Character:LeaveVehicle() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---AI: Tries to make this Character to look at Location
---@param location [object Object] @World location to look
function Character:LookAt(location) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---AI: Makes this Character to walk to the Location<br/><br/>Triggers event <a href='character#movecompleted'>MoveCompleted</a>
---@param location [object Object] 
---@param acceptance_radius [object Object] @(Default: 50)
function Character:MoveTo(location, acceptance_radius) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---AI: Makes this Character to follow another actor<br/><br/>Triggers event <a href='character#movecompleted'>MoveCompleted</a>
---@param actor [object Object] @Actor to follow
---@param acceptance_radius [object Object] @Radius to consider success (Default: 50)
---@param stop_on_succeed [object Object] @Whether to stop when reaching the target (Default: false)
---@param stop_on_fail [object Object] @Whether to stop when failed to reach the target (Default: false)
---@param update_rate [object Object] @How often to recalculate the AI path (Default: 0.25)
function Character:Follow(actor, acceptance_radius, stop_on_succeed, stop_on_fail, update_rate) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---AI: Stops the movement<br/><br/>Triggers event [MoveCompleted](character#movecompleted)
function Character:StopMovement() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Gives a Melee/Grenade/Weapon (Pickable) to the Character
---@param pickable [object Object] 
function Character:PickUp(pickable) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Plays an Animation Montage on this character
---@param animation_path [object Object] 
---@param slot_type [object Object] @(Default: AnimationSlotType.FullBody)
---@param loop_indefinitely [object Object] @(Default: false)
---@param blend_in_time [object Object] @(Default: 0.25)
---@param blend_out_time [object Object] @(Default: 0.25)
---@param play_rate [object Object] @(Default: 1.0)
---@param stop_all_montages [object Object] @Stops all running Montages from the same Group (Default: false)
function Character:PlayAnimation(animation_path, slot_type, loop_indefinitely, blend_in_time, blend_out_time, play_rate, stop_all_montages) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes, if existing, a SkeletalMesh from this Character given it's custom ID
---@param id [object Object] 
function Character:RemoveSkeletalMeshAttached(id) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes, if existing, a StaticMesh from this Character given it's custom ID
---@param id [object Object] 
function Character:RemoveStaticMeshAttached(id) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes all StaticMeshes attached
function Character:RemoveAllStaticMeshesAttached() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes all SkeletalMeshes attached
function Character:RemoveAllSkeletalMeshesAttached() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Respawns the Character, fullying it's Health and moving it to it's Initial Location
---@param location [object Object] @If not passed will use the initial location passed when the Character spawned (Default: initial location)
---@param rotation [object Object] @(Default: Rotator(0, 0, 0))
function Character:Respawn(location, rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Movement Max Acceleration of this Character
---@param walking [object Object] @(Default: 768)
---@param parachuting [object Object] @(Default: 512)
---@param skydiving [object Object] @(Default: 768)
---@param falling [object Object] @(Default: 128)
---@param swimming [object Object] @(Default: 256)
---@param swimming_surface [object Object] @(Default: 256)
---@param flying [object Object] @(Default: 1024)
function Character:SetAccelerationSettings(walking, parachuting, skydiving, falling, swimming, swimming_surface, flying) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Movement Braking Settings of this Character
---@param ground_friction [object Object] @(Default: 2)
---@param braking_friction_factor [object Object] @(Default: 2)
---@param braking_walking [object Object] @(Default: 96)
---@param braking_flying [object Object] @(Default: 3000)
---@param braking_swimming [object Object] @(Default: 10)
---@param braking_falling [object Object] @(Default: 0)
function Character:SetBrakingSettings(ground_friction, braking_friction_factor, braking_walking, braking_flying, braking_swimming, braking_falling) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Camera Mode (i.e. Only TPS, FPS or if allow both)<br/><br/>Using FPSOnly CameraMode on AI will lock his body rotation (when using LookAt)
---@param camera_mode [object Object] 
function Character:SetCameraMode(camera_mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Sets the Camera Offset (only affects TPS)
---@param camera_offset [object Object] 
function Character:SetCameraOffset(camera_offset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Crouch and to Prone
---@param can_crouch [object Object] 
function Character:SetCanCrouch(can_crouch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Aim
---@param can_aim [object Object] 
function Character:SetCanAim(can_aim) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Drop the Picked up item
---@param can_drop [object Object] 
function Character:SetCanDrop(can_drop) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Sprint
---@param can_sprint [object Object] 
function Character:SetCanSprint(can_sprint) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Grab any Prop
---@param can_grab_props [object Object] 
function Character:SetCanGrabProps(can_grab_props) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Pick up any Pickable (Weapon, Grenade, Melee...)
---@param can_pickup [object Object] 
function Character:SetCanPickupPickables(can_pickup) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Punch
---@param can_punch [object Object] 
function Character:SetCanPunch(can_punch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to deploy the Parachute
---@param can_deploy_parachute [object Object] 
function Character:SetCanDeployParachute(can_deploy_parachute) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets this Character's Capsule size (will affect Camera location and Character's collision)
---@param radius [object Object] @Default is 42
---@param half_height [object Object] @Default is 96
function Character:SetCapsuleSize(radius, half_height) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes how much damage this character takes on specific bones
---@param bone_name [object Object] 
---@param multiplier [object Object] 
function Character:SetDamageMultiplier(bone_name, multiplier) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Death sound when Character dies
---@param sound_asset [object Object] 
function Character:SetDeathSound(sound_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Set the Fall Damage multiplier taken when falling from High places.<br/><br/>Setting to 0 will make the Character to do not take damage or enter ragdoll mode
---@param damage [object Object] @Default is 10
function Character:SetFallDamageTaken(damage) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Flying Mode
---@param flying_mode [object Object] 
function Character:SetFlyingMode(flying_mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Field of View multiplier
---@param multiplier [object Object] 
function Character:SetFOVMultiplier(multiplier) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets time elapsed until automatically transition to HighFalling state (from SmallFalling) in seconds
---@param time [object Object] @Default is 1 second
function Character:SetHighFallingTime(time) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Gait Mode
---@param mode [object Object] 
function Character:SetGaitMode(mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Gravity Scale of this Character (can be negative)
---@param scale [object Object] 
function Character:SetGravityScale(scale) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Health of this Character. You can only call it on alive characters (call Respawn first)
---@param new_health [object Object] 
function Character:SetHealth(new_health) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Set the Impact Damage taken when being roamed by things.<br/><brq>Setting to 0 will make the Character to do not take damage or enter ragdoll mode
---@param damage [object Object] @Default is 10
function Character:SetImpactDamageTaken(damage) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if the Character can receive any damage
---@param is_invulnerable [object Object] 
function Character:SetInvulnerable(is_invulnerable) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the velocity of the jump
---@param velocity [object Object] @Default is 450
function Character:SetJumpZVelocity(velocity) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the MaxHealth of this Character
---@param new_max_health [object Object] 
function Character:SetMaxHealth(new_max_health) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Character Mesh on the fly
---@param skeletal_mesh_asset [object Object] 
function Character:SetMesh(skeletal_mesh_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Set Morph Target with Name and Value
---@param name [object Object] @Morph Target Name
---@param value [object Object] 
function Character:SetMorphTarget(name, value) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns the value of a Morph Target
---@param name [object Object] @Morph Target Name
---@return [object Object] @value of the Morph Target
function Character:GetMorphTarget(name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Clear all Morph Target that are set to this Mesh
function Character:ClearMorphTargets() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Returns a table with all morph targets available
---@return [object Object] @table with all morph targets available
function Character:GetAllMorphTargetNames() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Applies the physical animation settings to the body given
---@param bone [object Object] @The body we will be driving
---@param include_self [object Object] @Whether to modify the given body
---@param is_local_simulation [object Object] @Whether the drive targets are in world space or local
---@param orientation_strength [object Object] @The strength used to correct orientation error (Default: 0)
---@param angular_velocity_strength [object Object] @The strength used to correct angular velocity error (Default: 0)
---@param position_strength [object Object] @The strength used to correct linear position error. Only used for non-local simulation (Default: 0)
---@param velocity_strength [object Object] @The strength used to correct linear velocity error. Only used for non-local simulation (Default: 0)
---@param max_linear_force [object Object] @The max force used to correct linear errors (Default: 0)
---@param max_angular_force [object Object] @The max force used to correct angular errors (Default: 0)
function Character:SetPhysicalAnimationSettings(bone, include_self, is_local_simulation, orientation_strength, angular_velocity_strength, position_strength, velocity_strength, max_linear_force, max_angular_force) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Resets all Physical Animation settings
function Character:ResetPhysicalAnimationSettings() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Enables/Disables Character's Movement
---@param is_movement_enabled [object Object] 
function Character:SetMovementEnabled(is_movement_enabled) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Parachute Texture
---@param texture [object Object] 
function Character:SetParachuteTexture(texture) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Pain sound when Character takes damage
---@param sound_asset [object Object] 
function Character:SetPainSound(sound_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Set the Punch Damage this Character will apply on others
---@param damage [object Object] @Default is 15
function Character:SetPunchDamage(damage) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets Character Ragdoll Mode
---@param ragdoll_enabled [object Object] 
function Character:SetRagdollMode(ragdoll_enabled) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets all speed multiplier
---@param multiplier [object Object] @1 is normal
function Character:SetSpeedMultiplier(multiplier) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Stance Mode
---@param mode [object Object] 
function Character:SetStanceMode(mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets a Team which will disable damaging same Team Members
---@param team [object Object] @0 is neutral and default
function Character:SetTeam(team) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the View Mode
---@param view_mode [object Object] 
function Character:SetViewMode(view_mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Weapon's Aim Mode
---@param aim_mode [object Object] 
function Character:SetWeaponAimMode(aim_mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Stops an Animation Montage on this character
---@param animation_asset [object Object] 
function Character:StopAnimation(animation_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---UnGrabs/Drops the Prop the Character is holding
function Character:UnGrabProp() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if Character is in ragdoll mode
---@return [object Object] 
function Character:IsInRagdollMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if is invulnerable
---@return [object Object] 
function Character:IsInvulnerable() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if has movement enabled
---@return [object Object] 
function Character:IsMovementEnabled() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the camera mode
---@return [object Object] 
function Character:GetCameraMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can drop
---@return [object Object] 
function Character:GetCanDrop() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can punch
---@return [object Object] 
function Character:GetCanPunch() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can aim
---@return [object Object] 
function Character:GetCanAim() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can crouch
---@return [object Object] 
function Character:GetCanCrouch() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can sprint
---@return [object Object] 
function Character:GetCanSprint() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can grab props
---@return [object Object] 
function Character:GetCanGrabProps() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can pickup Pickables (Weapons, Melee, Grenade...)
---@return [object Object] 
function Character:GetCanPickupPickables() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Capsule Size
---@return [object Object] @table in the format <code>{ Radius, HalfHeight }</code>
function Character:GetCapsuleSize() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Gets a Bone Transform in world space given a bone name
---@param bone_name [object Object] 
---@return [object Object] @table in the format <code>{ Location, Rotation }</code>
function Character:GetBoneTransform(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Control Rotation
---@return [object Object] 
function Character:GetControlRotation() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Damage Multiplier of a bone
---@param bone_name [object Object] 
---@return [object Object] @the damage multiplier of the bone
function Character:GetDamageMultiplier(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Fall Damage
---@return [object Object] 
function Character:GetFallDamageTaken() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the FallingMode
---@return [object Object] 
function Character:GetFallingMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if it's in Flying mode
---@return [object Object] 
function Character:GetFlyingMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the GaitMode
---@return [object Object] 
function Character:GetGaitMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Grabbed Prop
---@return [object Object] 
function Character:GetGrabbedProp() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the gravity scale
---@return [object Object] 
function Character:GetGravityScale() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the current health
---@return [object Object] 
function Character:GetHealth() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the impact damage taken
---@return [object Object] 
function Character:GetImpactDamageTaken() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Jump Z Velocity
---@return [object Object] 
function Character:GetJumpZVelocity() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Max Health
---@return [object Object] 
function Character:GetMaxHealth() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Skeletal Mesh Asset
---@return [object Object] 
function Character:GetMesh() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Moving To location
---@return [object Object] @the moving to location or Vector(0, 0, 0) if not moving
function Character:GetMovingTo() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Pickable if picking up
---@return [object Object] 
function Character:GetPicked() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the possessing Player
---@return [object Object] 
function Character:GetPlayer() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the punch damage
---@return [object Object] 
function Character:GetPunchDamage() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the speed multiplier
---@return [object Object] 
function Character:GetSpeedMultiplier() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Stance Mode
---@return [object Object] 
function Character:GetStanceMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Swimming Mode
---@return [object Object] 
function Character:GetSwimmingMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Team
---@return [object Object] 
function Character:GetTeam() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the entered Vehicle
---@return [object Object] 
function Character:GetVehicle() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the View Mode
---@return [object Object] 
function Character:GetViewMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Weapon Aim Mode
---@return [object Object] 
function Character:GetWeaponAimMode() end

---Subscribe to an event
---@param event_name string @Name of the event to subscribe to
---@param callback function @Function to call when the event is triggered
---@return function @The callback function passed
---@overload fun(self: Character, event_name: "Destroy", callback: fun(self: Character)): fun(self: Character) @Triggered when an Actor is destroyed
---@overload fun(self: Character, event_name: "Spawn", callback: fun(self: Character)): fun(self: Character) @Triggered when an Actor is spawned/created
---@overload fun(self: Character, event_name: "ValueChange", callback: fun(self: Character, key: [object Object], value: [object Object])): fun(self: Character, key: [object Object], value: [object Object]) @Triggered when an Actor has a value changed with <code>:SetValue()</code>
---@overload fun(self: Character, event_name: "AnimationBeginNotify", callback: fun(self: Character, notify_name: [object Object])): fun(self: Character, notify_name: [object Object]) @When an Animation Montage Notify begins
---@overload fun(self: Character, event_name: "AnimationEndNotify", callback: fun(self: Character, notify_name: [object Object])): fun(self: Character, notify_name: [object Object]) @When an Animation Montage Notify ends
---@overload fun(self: Character, event_name: "Death", callback: fun(self: Character, last_damage_taken: [object Object], last_bone_damaged: [object Object], damage_type_reason: [object Object], hit_from_direction: [object Object], instigator: [object Object], causer: [object Object])): fun(self: Character, last_damage_taken: [object Object], last_bone_damaged: [object Object], damage_type_reason: [object Object], hit_from_direction: [object Object], instigator: [object Object], causer: [object Object]) @When Character Dies
---@overload fun(self: Character, event_name: "Drop", callback: fun(self: Character, object: [object Object], triggered_by_player: [object Object])): fun(self: Character, object: [object Object], triggered_by_player: [object Object]) @When Character drops the currently picked up Pickable
---@overload fun(self: Character, event_name: "EnterVehicle", callback: fun(self: Character, vehicle: [object Object], seat_index: [object Object])): fun(self: Character, vehicle: [object Object], seat_index: [object Object]) @When Character enters a vehicle
---@overload fun(self: Character, event_name: "AttemptEnterVehicle", callback: fun(self: Character, vehicle: [object Object], seat_index: [object Object]): [object Object]): fun(self: Character, vehicle: [object Object], seat_index: [object Object]): [object Object] @Triggered when a Character attempts to enter a vehicle
---@overload fun(self: Character, event_name: "FallingModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])): fun(self: Character, old_state: [object Object], new_state: [object Object]) @Called when FallingMode changes
---@overload fun(self: Character, event_name: "Fire", callback: fun(self: Character, weapon: [object Object])): fun(self: Character, weapon: [object Object]) @When Character fires a Weapon
---@overload fun(self: Character, event_name: "GaitModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])): fun(self: Character, old_state: [object Object], new_state: [object Object]) @Called when GaitMode changes
---@overload fun(self: Character, event_name: "GrabProp", callback: fun(self: Character, prop: [object Object])): fun(self: Character, prop: [object Object]) @When Character grabs up a Prop
---@overload fun(self: Character, event_name: "HealthChanged", callback: fun(self: Character, old_health: [object Object], new_health: [object Object])): fun(self: Character, old_health: [object Object], new_health: [object Object]) @When Character has it's Health changed, or because took damage or manually set through scripting or respawning
---@overload fun(self: Character, event_name: "Highlight", callback: fun(self: Character, is_highlighted: [object Object], object: [object Object])): fun(self: Character, is_highlighted: [object Object], object: [object Object]) @When Character highlights/looks at a Prop or a Pickable
---@overload fun(self: Character, event_name: "Interact", callback: fun(self: Character, object: [object Object]): [object Object]): fun(self: Character, object: [object Object]): [object Object] @Triggered when a Character interacts with a Prop or Pickable
---@overload fun(self: Character, event_name: "LeaveVehicle", callback: fun(self: Character, vehicle: [object Object])): fun(self: Character, vehicle: [object Object]) @When Character leaves a vehicle
---@overload fun(self: Character, event_name: "AttemptLeaveVehicle", callback: fun(self: Character, vehicle: [object Object]): [object Object]): fun(self: Character, vehicle: [object Object]): [object Object] @Triggered when this Character attempts to leave a vehicle
---@overload fun(self: Character, event_name: "MoveCompleted", callback: fun(self: Character, succeeded: [object Object])): fun(self: Character, succeeded: [object Object]) @Called when AI reaches it's destination, or when it fails
---@overload fun(self: Character, event_name: "PickUp", callback: fun(self: Character, object: [object Object])): fun(self: Character, object: [object Object]) @When Character picks up anything
---@overload fun(self: Character, event_name: "Possessed", callback: fun(self: Character, possesser: [object Object])): fun(self: Character, possesser: [object Object]) @When Character is possessed
---@overload fun(self: Character, event_name: "Punch", callback: fun(self: Character)): fun(self: Character) @When Character punches
---@overload fun(self: Character, event_name: "RagdollModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])): fun(self: Character, old_state: [object Object], new_state: [object Object]) @When Character enters or leaves ragdoll
---@overload fun(self: Character, event_name: "AttemptReload", callback: fun(self: Character, weapon: [object Object]): [object Object]): fun(self: Character, weapon: [object Object]): [object Object] @Triggered when this Character attempts to reload
---@overload fun(self: Character, event_name: "Reload", callback: fun(self: Character, weapon: [object Object], ammo_to_reload: [object Object])): fun(self: Character, weapon: [object Object], ammo_to_reload: [object Object]) @When Character reloads a weapon
---@overload fun(self: Character, event_name: "Respawn", callback: fun(self: Character)): fun(self: Character) @When Character Respawns
---@overload fun(self: Character, event_name: "StanceModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])): fun(self: Character, old_state: [object Object], new_state: [object Object]) @Called when StanceMode changes
---@overload fun(self: Character, event_name: "SwimmingModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])): fun(self: Character, old_state: [object Object], new_state: [object Object]) @Called when Swimming Mode changes
---@overload fun(self: Character, event_name: "TakeDamage", callback: fun(self: Character, damage: [object Object], bone: [object Object], type: [object Object], from_direction: [object Object], instigator: [object Object], causer: [object Object]): [object Object]): fun(self: Character, damage: [object Object], bone: [object Object], type: [object Object], from_direction: [object Object], instigator: [object Object], causer: [object Object]): [object Object] @Triggered when this Character takes damage
---@overload fun(self: Character, event_name: "UnGrabProp", callback: fun(self: Character, prop: [object Object])): fun(self: Character, prop: [object Object]) @When Character drops a Prop
---@overload fun(self: Character, event_name: "UnPossessed", callback: fun(self: Character, old_possesser: [object Object])): fun(self: Character, old_possesser: [object Object]) @When Character is unpossessed
---@overload fun(self: Character, event_name: "ViewModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])): fun(self: Character, old_state: [object Object], new_state: [object Object]) @When Character changes it's View Mode
---@overload fun(self: Character, event_name: "WeaponAimModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])): fun(self: Character, old_state: [object Object], new_state: [object Object]) @Called when Weapon Aim Mode changes
function Character:Subscribe(event_name, callback) end

---Unsubscribe from an event
---@param event_name string @Name of the event to unsubscribe from
---@param callback? function @Optional callback to unsubscribe (if no callback is passed then all callbacks in this Package will be unsubscribed from this event)
---@overload fun(self: Character, event_name: "Destroy", callback: fun(self: Character)) @Triggered when an Actor is destroyed
---@overload fun(self: Character, event_name: "Spawn", callback: fun(self: Character)) @Triggered when an Actor is spawned/created
---@overload fun(self: Character, event_name: "ValueChange", callback: fun(self: Character, key: [object Object], value: [object Object])) @Triggered when an Actor has a value changed with <code>:SetValue()</code>
---@overload fun(self: Character, event_name: "AnimationBeginNotify", callback: fun(self: Character, notify_name: [object Object])) @When an Animation Montage Notify begins
---@overload fun(self: Character, event_name: "AnimationEndNotify", callback: fun(self: Character, notify_name: [object Object])) @When an Animation Montage Notify ends
---@overload fun(self: Character, event_name: "Death", callback: fun(self: Character, last_damage_taken: [object Object], last_bone_damaged: [object Object], damage_type_reason: [object Object], hit_from_direction: [object Object], instigator: [object Object], causer: [object Object])) @When Character Dies
---@overload fun(self: Character, event_name: "Drop", callback: fun(self: Character, object: [object Object], triggered_by_player: [object Object])) @When Character drops the currently picked up Pickable
---@overload fun(self: Character, event_name: "EnterVehicle", callback: fun(self: Character, vehicle: [object Object], seat_index: [object Object])) @When Character enters a vehicle
---@overload fun(self: Character, event_name: "AttemptEnterVehicle", callback: fun(self: Character, vehicle: [object Object], seat_index: [object Object]): [object Object]) @Triggered when a Character attempts to enter a vehicle
---@overload fun(self: Character, event_name: "FallingModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])) @Called when FallingMode changes
---@overload fun(self: Character, event_name: "Fire", callback: fun(self: Character, weapon: [object Object])) @When Character fires a Weapon
---@overload fun(self: Character, event_name: "GaitModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])) @Called when GaitMode changes
---@overload fun(self: Character, event_name: "GrabProp", callback: fun(self: Character, prop: [object Object])) @When Character grabs up a Prop
---@overload fun(self: Character, event_name: "HealthChanged", callback: fun(self: Character, old_health: [object Object], new_health: [object Object])) @When Character has it's Health changed, or because took damage or manually set through scripting or respawning
---@overload fun(self: Character, event_name: "Highlight", callback: fun(self: Character, is_highlighted: [object Object], object: [object Object])) @When Character highlights/looks at a Prop or a Pickable
---@overload fun(self: Character, event_name: "Interact", callback: fun(self: Character, object: [object Object]): [object Object]) @Triggered when a Character interacts with a Prop or Pickable
---@overload fun(self: Character, event_name: "LeaveVehicle", callback: fun(self: Character, vehicle: [object Object])) @When Character leaves a vehicle
---@overload fun(self: Character, event_name: "AttemptLeaveVehicle", callback: fun(self: Character, vehicle: [object Object]): [object Object]) @Triggered when this Character attempts to leave a vehicle
---@overload fun(self: Character, event_name: "MoveCompleted", callback: fun(self: Character, succeeded: [object Object])) @Called when AI reaches it's destination, or when it fails
---@overload fun(self: Character, event_name: "PickUp", callback: fun(self: Character, object: [object Object])) @When Character picks up anything
---@overload fun(self: Character, event_name: "Possessed", callback: fun(self: Character, possesser: [object Object])) @When Character is possessed
---@overload fun(self: Character, event_name: "Punch", callback: fun(self: Character)) @When Character punches
---@overload fun(self: Character, event_name: "RagdollModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])) @When Character enters or leaves ragdoll
---@overload fun(self: Character, event_name: "AttemptReload", callback: fun(self: Character, weapon: [object Object]): [object Object]) @Triggered when this Character attempts to reload
---@overload fun(self: Character, event_name: "Reload", callback: fun(self: Character, weapon: [object Object], ammo_to_reload: [object Object])) @When Character reloads a weapon
---@overload fun(self: Character, event_name: "Respawn", callback: fun(self: Character)) @When Character Respawns
---@overload fun(self: Character, event_name: "StanceModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])) @Called when StanceMode changes
---@overload fun(self: Character, event_name: "SwimmingModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])) @Called when Swimming Mode changes
---@overload fun(self: Character, event_name: "TakeDamage", callback: fun(self: Character, damage: [object Object], bone: [object Object], type: [object Object], from_direction: [object Object], instigator: [object Object], causer: [object Object]): [object Object]) @Triggered when this Character takes damage
---@overload fun(self: Character, event_name: "UnGrabProp", callback: fun(self: Character, prop: [object Object])) @When Character drops a Prop
---@overload fun(self: Character, event_name: "UnPossessed", callback: fun(self: Character, old_possesser: [object Object])) @When Character is unpossessed
---@overload fun(self: Character, event_name: "ViewModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])) @When Character changes it's View Mode
---@overload fun(self: Character, event_name: "WeaponAimModeChanged", callback: fun(self: Character, old_state: [object Object], new_state: [object Object])) @Called when Weapon Aim Mode changes
function Character:Unsubscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Light represents a Lighting source.
---@class Light : Actor
---@overload fun(): Light
Light = {}

---@enum AimMode
AimMode = {
    ["None"] = 0,
    ["ADS"] = 1,
    ["ZoomedZoom"] = 2,
    ["Zoomed"] = 3,
    ["ZoomedFar"] = 4
}

---@enum AnimationSlotType
AnimationSlotType = {
    ["FullBody"] = 0,
    ["UpperBody"] = 1
}

---@enum AttachmentRule
AttachmentRule = {
    ["KeepRelative"] = 0,
    ["KeepWorld"] = 1,
    ["SnapToTarget"] = 2
}

---@enum AttenuationFunction
AttenuationFunction = {
    ["Linear"] = 0,
    ["Logarithmic"] = 1,
    ["Inverse"] = 2,
    ["LogReverse"] = 3,
    ["NaturalSound"] = 4
}

---@enum BlendMode
BlendMode = {
    ["Opaque"] = 0,
    ["Masked"] = 1,
    ["Translucent"] = 2,
    ["Additive"] = 3,
    ["Modulate"] = 4,
    ["AlphaComposite"] = 5,
    ["AlphaHoldout"] = 6
}

---@enum CameraMode
CameraMode = {
    ["FPSTPS"] = 0,
    ["FPSOnly"] = 1,
    ["TPSOnly"] = 2
}

---@enum CollisionChannel
CollisionChannel = {
    ["WorldStatic"] = 1 << 0,
    ["WorldDynamic"] = 1 << 1,
    ["Pawn"] = 1 << 2,
    ["PhysicsBody"] = 1 << 5,
    ["Vehicle"] = 1 << 22,
    ["TracePrimitive"] = 1 << 16,
    ["Mesh"] = 1 << 17,
    ["Foliage"] = 1 << 20
}

---@enum CollisionType
CollisionType = {
    ["Normal"] = 0,
    ["StaticOnly"] = 1,
    ["NoCollision"] = 2,
    ["IgnoreOnlyPawn"] = 3,
    ["Auto"] = 4
}

---@enum CursorType
CursorType = {
    ["None"] = 0,
    ["Default"] = 1,
    ["TextEditBeam"] = 2,
    ["ResizeLeftRight"] = 3,
    ["ResizeUpDown"] = 4,
    ["ResizeSouthEast"] = 5,
    ["ResizeSouthWest"] = 6,
    ["CardinalCross"] = 7,
    ["Crosshairs"] = 8,
    ["Hand"] = 9,
    ["GrabHand"] = 10,
    ["GrabHandClosed"] = 11,
    ["SlashedCircle"] = 12,
    ["EyeDropper"] = 13
}

---@enum ConstraintMotion
ConstraintMotion = {
    ["Free"] = 0,
    ["Limited"] = 1,
    ["Locked"] = 2
}

---@enum DamageType
DamageType = {
    ["Shot"] = 0,
    ["Explosion"] = 1,
    ["Punch"] = 2,
    ["Fall"] = 3,
    ["RunOverProp"] = 4,
    ["RunOverVehicle"] = 5,
    ["Unknown"] = 6
}

---@enum DatabaseEngine
DatabaseEngine = {
    ["SQLite"] = 0,
    ["MySQL"] = 1,
    ["PostgreSQL"] = 2
}

---@enum DifferentialType
DifferentialType = {
    ["LimitedSlip_4W"] = 0,
    ["LimitedSlip_FrontDrive"] = 1,
    ["LimitedSlip_RearDrive"] = 2,
    ["Open_4W"] = 3,
    ["Open_FrontDrive"] = 4,
    ["Open_RearDrive"] = 5
}

---@enum FallingMode
FallingMode = {
    ["None"] = 0,
    ["Jumping"] = 1,
    ["Climbing"] = 2,
    ["Vaulting"] = 3,
    ["Falling"] = 4,
    ["HighFalling"] = 5,
    ["Parachuting"] = 6,
    ["SkyDiving"] = 7
}

---@enum FontType
FontType = {
    ["Roboto"] = 0,
    ["GothicA1"] = 1,
    ["PoiretOne"] = 2,
    ["Oswald"] = 3,
    ["RobotoMono"] = 4,
    ["OpenSans"] = 5
}

---@enum GaitMode
GaitMode = {
    ["None"] = 0,
    ["Walking"] = 1,
    ["Sprinting"] = 2
}

---@enum HighlightMode
HighlightMode = {
    ["Always"] = 0,
    ["OnlyHidden"] = 1,
    ["OnlyVisible"] = 2
}

---@enum HandlingMode
HandlingMode = {
    ["SingleHandedWeapon"] = 0,
    ["DoubleHandedWeapon"] = 1,
    ["SingleHandedMelee"] = 2,
    ["DoubleHandedMelee"] = 3,
    ["Throwable"] = 4,
    ["Torch"] = 5,
    ["Barrel"] = 6,
    ["Box"] = 7
}

---@enum InputEvent
InputEvent = {
    ["Pressed"] = 0,
    ["Released"] = 1
}

---@enum LightProfile
LightProfile = {
    ["None"] = 0,
    ["Arrow_Star"] = 1,
    ["Arrow_Up"] = 2,
    ["Beam_01"] = 3,
    ["Beam_02"] = 4,
    ["Beam_03"] = 5,
    ["Beam_04"] = 6,
    ["Beam_05"] = 7,
    ["Beam_06"] = 8,
    ["Beam_07"] = 9,
    ["Beam_08"] = 10,
    ["Beam_LED_01"] = 11,
    ["Beam_LED_02"] = 12,
    ["Beam_LED_03"] = 13,
    ["Beam_LED_04"] = 14,
    ["Beam_LED_05"] = 15,
    ["Beam_LED_06"] = 16,
    ["Beam_LED_07"] = 17,
    ["Bow"] = 18,
    ["Capped_01"] = 19,
    ["Capped_02"] = 20,
    ["Shattered_01"] = 21,
    ["Shattered_02"] = 22,
    ["Shattered_03"] = 23,
    ["Shattered_04"] = 24,
    ["Shattered_05"] = 25,
    ["SpotLight_01"] = 26,
    ["SpotLight_02"] = 27,
    ["SpotLight_03"] = 28,
    ["SpotLight_04"] = 29,
    ["Spreadout_01"] = 30,
    ["Spreadout_02"] = 31,
    ["Spreadout_03"] = 32,
    ["Spreadout_04"] = 33,
    ["Star_Bow"] = 34,
    ["Star_Burst_01"] = 35,
    ["Star_Burst_02"] = 36,
    ["Star_Burst_03"] = 37,
    ["Star_Burst_04"] = 38,
    ["Star_Burst_05"] = 39,
    ["Star_Burst_06"] = 40,
    ["Star_Burst_07"] = 41,
    ["Star_Burst_08"] = 42,
    ["Star_X_01"] = 43,
    ["Star_X_02"] = 44,
    ["Wall_Boomerang"] = 45,
    ["Wall_Inverted_V"] = 46,
    ["Wall_Star_T"] = 47,
    ["Wing_6"] = 48,
    ["Wing_V_01"] = 49,
    ["Wing_V_02"] = 50
}

---@enum LogType
LogType = {
    ["Display"] = 0,
    ["Warning"] = 1,
    ["Error"] = 2,
    ["Debug"] = 3,
    ["Verbose"] = 4,
    ["Scripting"] = 5,
    ["ScriptingWarn"] = 6,
    ["ScriptingError"] = 7,
    ["Chat"] = 8,
    ["WebUI"] = 9,
    ["Success"] = 10,
    ["Fatal"] = 11
}

---@enum LightType
LightType = {
    ["Point"] = 0,
    ["Spot"] = 1,
    ["React"] = 2
}

---@enum SoundType
SoundType = {
    ["SFX"] = 0,
    ["Music"] = 1
}

---@enum SoundLoopMode
SoundLoopMode = {
    ["Default"] = 0,
    ["Forever"] = 1,
    ["Never"] = 2
}

---@enum StanceMode
StanceMode = {
    ["None"] = 0,
    ["Standing"] = 1,
    ["Crouching"] = 2,
    ["Proning"] = 3
}

---@enum SurfaceType
SurfaceType = {
    ["Default"] = 0,
    ["Carpet"] = 1,
    ["Concrete"] = 2,
    ["Grass"] = 3,
    ["Gravel"] = 4,
    ["Ground"] = 5,
    ["MetalLight"] = 6,
    ["Plastic"] = 7,
    ["Sand"] = 8,
    ["Snow"] = 9,
    ["Water"] = 10,
    ["WoodLight"] = 11,
    ["Flesh"] = 12,
    ["MetalHeavy"] = 13,
    ["WoodHeavy"] = 14,
    ["Ice"] = 15,
    ["Mud"] = 16,
    ["Rock"] = 17,
    ["Thump"] = 18,
    ["Glass"] = 19
}

---@enum SwimmingMode
SwimmingMode = {
    ["None"] = 0,
    ["Surface"] = 1,
    ["Underwater"] = 2
}

---@enum TextRenderAlignCamera
TextRenderAlignCamera = {
    ["Unaligned"] = 0,
    ["AlignCameraRotation"] = 1,
    ["FaceCamera"] = 2
}

---@enum TextRenderBevelType
TextRenderBevelType = {
    ["Linear"] = 0,
    ["HalfCircle"] = 1,
    ["Convex"] = 2,
    ["Concave"] = 3,
    ["OneStep"] = 4,
    ["TwoSteps"] = 5,
    ["Engraved"] = 6
}

---@enum TextRenderHorizontalAlignment
TextRenderHorizontalAlignment = {
    ["Left"] = 0,
    ["Center"] = 1,
    ["Right"] = 2
}

---@enum TextRenderVerticalAlignment
TextRenderVerticalAlignment = {
    ["Top"] = 0,
    ["Center"] = 1,
    ["Bottom"] = 2,
    ["QuadTop"] = 3
}

---@enum TriggerType
TriggerType = {
    ["Sphere"] = 0,
    ["Box"] = 1
}

---@enum ViewMode
ViewMode = {
    ["FPS"] = 0,
    ["TPS1"] = 1,
    ["TPS2"] = 2,
    ["TPS3"] = 3,
    ["TopDown"] = 4
}

---@enum VOIPSetting
VOIPSetting = {
    ["Local"] = 0,
    ["Global"] = 1,
    ["Muted"] = 2
}

---@enum WeatherType
WeatherType = {
    ["Clear"] = 0,
    ["Rain"] = 1,
    ["Cloudy"] = 2,
    ["Thunderstorm"] = 3
}

---@enum WebUIModifier
WebUIModifier = {
    ["None"] = 0,
    ["CapsLockOn"] = 1 << 0,
    ["ShiftDown"] = 1 << 1,
    ["ControlDown"] = 1 << 2,
    ["AltDown"] = 1 << 3,
    ["LeftMouseButton"] = 1 << 4,
    ["MiddleMouseButton"] = 1 << 5,
    ["RightMouseButton"] = 1 << 6,
    ["CommandDown"] = 1 << 7,
    ["NumLockOn"] = 1 << 8,
    ["IsKeyPad"] = 1 << 9,
    ["IsLeft"] = 1 << 10,
    ["IsRight"] = 1 << 11,
    ["AltgrDown"] = 1 << 12,
    ["IsRepeat"] = 1 << 13
}

---@enum WebUIKeyType
WebUIKeyType = {
    ["Down"] = 0,
    ["Up"] = 1,
    ["Char"] = 2
}

---@enum WebUIMouseType
WebUIMouseType = {
    ["Left"] = 0,
    ["Right"] = 1,
    ["Middle"] = 2
}