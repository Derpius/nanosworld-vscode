---@meta

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A Melee represents an Entity which can be Pickable by a Character and can be used to melee attack, Charactes can hold it with hands with pre-defined handling modes.
---@class Melee : Actor, Paintable, Pickable
Melee_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A Melee represents an Entity which can be Pickable by a Character and can be used to melee attack, Charactes can hold it with hands with pre-defined handling modes.
---@return Melee @Instance of Melee
function Melee() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Base class for all Actor entities.
---@class Actor
Actor_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Particle Entity.
---@class Particle : Actor
Particle_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Particle Entity.
---@return Particle @Instance of Particle
function Particle() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---A Billboard is a 2D Material that will be rendered always facing the camera.
---@class Billboard : Actor, Paintable
Billboard_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---A Billboard is a 2D Material that will be rendered always facing the camera.
---@return Billboard @Instance of Billboard
function Billboard() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Prop represents a Dynamic Mesh which can be spawned in the world, can be grabbed around by characters and have physics.
---@class Prop : Actor, Paintable
Prop_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Prop represents a Dynamic Mesh which can be spawned in the world, can be grabbed around by characters and have physics.
---@return Prop @Instance of Prop
function Prop() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Blueprint Class allows spawning any Unreal Blueprint Actor in nanos world.
---@class Blueprint : Actor, Paintable
Blueprint_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Blueprint Class allows spawning any Unreal Blueprint Actor in nanos world.
---@return Blueprint @Instance of Blueprint
function Blueprint() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Calls a Blueprint Event or Function
---@param event_name string Event or Function name 
---@param ... any Sequence of arguments to pass to the event (Default: nil)
function Blueprint_meta:CallBlueprintEvent(event_name, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Chad Grenade
---@class Grenade : Actor, Paintable, Pickable
Grenade_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Chad Grenade
---@return Grenade @Instance of Grenade
function Grenade() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Decals are Materials that are projected onto meshes in your level, including Static Meshes and Skeletal Meshes.
---@class Decal : Actor, Paintable
Decal_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Decals are Materials that are projected onto meshes in your level, including Static Meshes and Skeletal Meshes.
---@return Decal @Instance of Decal
function Decal() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A Cable represents a Physics Constraint which joins two Actors with a rope-like visual representation between them.
---@class Cable : Actor, Paintable
Cable_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A Cable represents a Physics Constraint which joins two Actors with a rope-like visual representation between them.
---@return Cable @Instance of Cable
function Cable() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Attached the beginning of this cable to another Actor at a specific bone or relative location
---@param other Actor 
---@param relative_location Vector (Default: Vector(0, 0, 0))
---@param bone_name string (Default: )
function Cable_meta:AttachStartTo(other, relative_location, bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Attached the end of this cable to another Actor at a specific bone or relative location
---@param other Actor 
---@param relative_location Vector (Default: Vector(0, 0, 0))
---@param bone_name string (Default: )
function Cable_meta:AttachEndTo(other, relative_location, bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Detaches the End of this Cable
function Cable_meta:DetachEnd() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Detaches the Start of this Cable
function Cable_meta:DetachStart() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Set the overall settings for this cable (visuals only)
---@param length number Rest length of the cable. Default is 100 
---@param num_segments number How many segments the cable has. Default is 10 
---@param solver_iterations number The number of solver iterations controls how 'stiff' the cable is. Default is 0 
function Cable_meta:SetCableSettings(length, num_segments, solver_iterations) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Set the forces the cable has applied (visuals only)
---@param force Vector Force vector (world space) applied to all particles in cable. Default is Vector(0, 0, 0) 
---@param gravity_scale number Scaling applied to world gravity affecting this cable. Default is 1 (Default: 1)
function Cable_meta:SetForces(force, gravity_scale) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Physics Angular Limits of this cable
---@param swing_1_motion ConstraintMotion Indicates whether the Swing1 limit is used 
---@param swing_2_motion ConstraintMotion Indicates whether the Swing2 limit is used 
---@param twist_motion ConstraintMotion Indicates whether the Twist limit is used 
---@param swing_1_limit number Angle of movement along the XY plane. This defines the first symmetric angle of the cone (Default: 0)
---@param swing_2_limit number Angle of movement along the XZ plane. This defines the second symmetric angle of the cone (Default: 0)
---@param twist_limit number Symmetric angle of roll along the X-axis (Default: 0)
function Cable_meta:SetAngularLimits(swing_1_motion, swing_2_motion, twist_motion, swing_1_limit, swing_2_limit, twist_limit) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Physics Linear Limits of this cable
---@param x_motion ConstraintMotion Indicates the linear constraint applied along the X-axis. Free implies no constraint at all. Locked implies no movement along X is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided 
---@param y_motion ConstraintMotion Indicates the linear constraint applied along the Y-axis. Free implies no constraint at all. Locked implies no movement along Y is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided 
---@param z_motion ConstraintMotion Indicates the linear constraint applied along theZX-axis. Free implies no constraint at all. Locked implies no movement along Z is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided 
---@param limit number The distance allowed between between the two joint reference frames. Distance applies on all axes enabled (one axis means line, two axes implies circle, three axes implies sphere) (Default: 0)
---@param restitution number Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead (Default: 0)
---@param use_soft_constraint boolean Whether we want to use a soft constraint (spring) (Default: false)
---@param stiffness number Stiffness of the soft constraint. Only used when Soft Constraint is on (Default: 0)
---@param damping number Damping of the soft constraint. Only used when Soft Constraint is on (Default: 0)
function Cable_meta:SetLinearLimits(x_motion, y_motion, z_motion, limit, restitution, use_soft_constraint, stiffness, damping) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Set the rendering settings of this cable (visuals only)
---@param width number How wide the cable geometry is. Default is 6 
---@param num_sides number Number of sides of the cable geometry. Default is 4 
---@param tile_material number How many times to repeat the material along the length of the cable. Default is 1 
function Cable_meta:SetRenderingSettings(width, num_sides, tile_material) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Actor attached to Start
---@return Actor @the Actor or nil
function Cable_meta:GetAttachedStartTo() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Actor attached to End
---@return Actor @the Actor or nil
function Cable_meta:GetAttachedEndTo() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Scene Capture is an Actor which captures a fully dynamic image of the scene into a Texture. It captures the scene from its view frustum, stores that view as an image, which is then used within a Material.
---@class SceneCapture : Actor
SceneCapture_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Scene Capture is an Actor which captures a fully dynamic image of the scene into a Texture. It captures the scene from its view frustum, stores that view as an image, which is then used within a Material.
---@return SceneCapture @Instance of SceneCapture
function SceneCapture() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Stops or Restore Capturing
---@param freeze boolean 
function SceneCapture_meta:SetFreeze(freeze) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Sets the FOV
---@param angle number 
function SceneCapture_meta:SetFOVAngle(angle) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Change the output Texture size
Note: too high texture will make the capture slower and will affect game performance
---@param width number 
---@param height number 
function SceneCapture_meta:Resize(width, height) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Set how frequent is the capture
Note: Setting to 0 will make it capture every frame
---@param render_rate number 
function SceneCapture_meta:SetRenderRate(render_rate) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Light represents a Lighting source.
---@class Light : Actor
Light_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Light represents a Lighting source.
---@return Light @Instance of Light
function Light() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Weapons are fully customizable, all pieces of the weapon can be changed with immense possibility of creation
---@class Weapon : Actor, Paintable, Pickable
Weapon_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Weapons are fully customizable, all pieces of the weapon can be changed with immense possibility of creation
---@return Weapon @Instance of Weapon
function Weapon() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Base class for all Paintable entities.
---@class Paintable
Paintable_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A File represents an entry to a system file.
---@class File
File_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A File represents an entry to a system file.
---@return File @Instance of File
function File() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Returns when a file was last modified in Unix time
---@param path string Path to file 
---@return number @the last update time in unix time
function File_meta.Time(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Creates a Directory (for every folder passed)
---@param path string Path to folder 
---@return boolean @if succeeded
function File_meta.CreateDirectory(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Deletes a folder or file
---@param path string Path to file or folder 
---@return number @amount of files deleted
function File_meta.Remove(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Verifies if a entry exists in the file system
---@param path string Path to file or folder 
---@return boolean @if exists
function File_meta.Exists(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if a path is a directory
---@param path string Path to folder 
---@return boolean @if is a directory
function File_meta.IsDirectory(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if a path is a file
---@param path string Path to filey 
---@return boolean @if is a regular file
function File_meta.IsRegularFile(path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Closes the file and destroys the entity
function File_meta:Close() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Flushes content to the file
function File_meta:Flush() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if the file status is End of File
---@return boolean @if is EOF
function File_meta:IsEOF() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if the file status is Bad
---@return boolean @if status is Bad
function File_meta:IsBad() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if the file status is Good
---@return boolean @if status is Good
function File_meta:IsGood() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Checks if the last operation has Failed
---@return boolean @if last operation failed
function File_meta:HasFailed() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Reads characters from the File and returns it. Also moves the file pointer to the latest read position. Pass 0 to read the whole file
---@param length number Length to be read from file (Default: 0)
---@return string @file data
function File_meta:Read(length) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Reads characters from the File asynchronously.
---@param length number Length to be read from file 
---@param callback function Callback with the file read 
function File_meta:ReadAsync(length, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Reads and returns the next file line
---@return string @file line data
function File_meta:ReadLine() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the file pointer to a specific position
---@param position number Position to offset the file pointer 
function File_meta:Seek(position) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Returns the size of the file
---@return number @file size
function File_meta:Size() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Skips n (amount) positions from the current file pointer position
---@param amount number Amount to offset the file pointer 
function File_meta:Skip(amount) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Returns the current file pointer position
---@return number @current file pointer position
function File_meta:Tell() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Writes the Data at the current position of the file
---@param data string Data to write to the file 
function File_meta:Write(data) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Class for spawning a dynamic Web Browser
---@class WebUI
WebUI_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Class for spawning a dynamic Web Browser
---@return WebUI @Instance of WebUI
function WebUI() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Base class for all Pickable entities.
---@class Pickable
Pickable_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Vehicles are wheeled entities which Characters can possesses and drive.
---@class Vehicle : Actor, Paintable
Vehicle_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Vehicles are wheeled entities which Characters can possesses and drive.
---@return Vehicle @Instance of Vehicle
function Vehicle() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Text Render class is useful for spawning Texts in 3D world, you can even attach it to other entities.
---@class TextRender : Actor, Paintable
TextRender_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A Text Render class is useful for spawning Texts in 3D world, you can even attach it to other entities.
---@return TextRender @Instance of TextRender
function TextRender() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Color
---@param color Color 
function TextRender_meta:SetColor(color) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Font
---@param font_type FontType 
function TextRender_meta:SetFont(font_type) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Freeze mesh rebuild, to avoid unnecessary mesh rebuilds when setting a few properties together
---@param freeze boolean 
function TextRender_meta:SetFreeze(freeze) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Glyph representation settings to generate the 3D Mesh for this text render
---@param extrude number (Default: 0)
---@param level number (Default: 0)
---@param bevel_type TextRenderBevelType (Default: TextRenderBevelType.Convex)
---@param bevel_segments number (Default: 8)
---@param outline boolean (Default: false)
function TextRender_meta:SetGlyphSettings(extrude, level, bevel_type, bevel_segments, outline) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Max Size of the TextRender, optionally scaling it proportionally
---@param max_width number (Default: 0)
---@param max_height number (Default: 0)
---@param scale_proportionally boolean (Default: true)
function TextRender_meta:SetMaxSize(max_width, max_height, scale_proportionally) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Text
---@param text string 
function TextRender_meta:SetText(text) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Sets the Text & Font settings for this text render
---@param kerning number (Default: 0)
---@param line_spacing number (Default: 0)
---@param word_spacing number (Default: 0)
---@param horizontal_alignment TextRenderHorizontalAlignment (Default: TextRenderHorizontalAlignment.Center)
---@param vertical_alignment TextRenderVerticalAlignment (Default: 0TextRenderVerticalAlignment.Center)
function TextRender_meta:SetTextSettings(kerning, line_spacing, word_spacing, horizontal_alignment, vertical_alignment) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Players are Entities that represents the individual behind the mouse and keyboard. Players are spawned automatically when connected to the server.
---@class Player
Player_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Class for playing in-game 2D and 3D sounds
---@class Sound : Actor
Sound_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Class for playing in-game 2D and 3D sounds
---@return Sound @Instance of Sound
function Sound() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A StaticMesh entity represents a Mesh which can be spawned in the world, can't move and is more optimized for using in decorating the world.
---@class StaticMesh : Actor, Paintable
StaticMesh_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---A StaticMesh entity represents a Mesh which can be spawned in the world, can't move and is more optimized for using in decorating the world.
---@return StaticMesh @Instance of StaticMesh
function StaticMesh() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Asset path mesh used
---@return StaticMeshPath @asset path
function StaticMesh_meta:GetMesh() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Gets if this StaticMesh is from the Level
---@return boolean @if this StaticMesh is from the level
function StaticMesh_meta:IsFromLevel() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Subscribe for user-defined Events.
---@class Events
Events_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Calls an Event which will be triggered in all Local Packages
---@param event_name string The Event Name to trigger the event 
---@param ... any Arguments to pass to the event (Default: nil)
function Events_meta.Call(event_name, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Calls an Event if on Client which will be triggered in all Server Packages
---@param event_name string The Event Name to trigger the event 
---@param ... any Arguments to pass to the event (Default: nil)
function Events_meta.CallRemote(event_name, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Calls an Event if on Server which will be triggered in all Client's Packages of a specific Player
---@param event_name string The Event Name to trigger the event 
---@param player Player The remote player to send this event 
---@param ... any Arguments to pass to the event (Default: nil)
function Events_meta.CallRemote(event_name, player, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Calls an Event on Server which will be triggered in all Client's Packages of all Players
---@param event_name string The Event Name to trigger the event 
---@param ... any Arguments to pass to the event (Default: nil)
function Events_meta.BroadcastRemote(event_name, ...) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Subscribes for an user-created event which will be triggered for both local or remote called events
---@param event_name string The Event Name to subscribe 
---@param callback function The callback function to execute 
---@return function @the subscribed callback itself
function Events_meta.Subscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Unsubscribes from all subscribed events in this Package with that event name, optionally passing the function to unsubscribe only that callback
---@param event_name string The Event Name to unsubscribe 
---@param callback function The callback function to unsubscribe (Default: nil)
function Events_meta.Unsubscribe(event_name, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A Trigger class is a utility class to trigger events when any Entity enters an Area.
---@class Trigger : Actor
Trigger_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---A Trigger class is a utility class to trigger events when any Entity enters an Area.
---@return Trigger @Instance of Trigger
function Trigger() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Canvas is an entity which you can draw onto it.
---@class Canvas
Canvas_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Canvas is an entity which you can draw onto it.
---@return Canvas @Instance of Canvas
function Canvas() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---HTTP Requests Interface.
---@class HTTP
HTTP_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Makes an asynchronous HTTP Request
---@param uri string The main URI 
---@param endpoint string The endpoint (Default: /)
---@param method string The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods'>HTTP Method</a> to be used (Default: GET)
---@param data string Payload (Default: )
---@param content_type string The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types'>Content Type</a> to be used (Default: application/json)
---@param compress boolean Whether or not to compress the content with gzip (Default: false)
---@param headers table The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers'>Headers</a> to be used (Default: {})
---@param callback function The result will be called in the format `function(status, data)` (Default: nil)
function HTTP_meta.Request(uri, endpoint, method, data, content_type, compress, headers, callback) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Makes a synchronous HTTP Request.<br/><br/>The request will be made synchronously and will freeze the server until it's done.
---@param uri string The main URI 
---@param endpoint string The endpoint (Default: /)
---@param method string The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods'>HTTP Method</a> to be used (Default: GET)
---@param data string Payload (Default: )
---@param content_type string The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types'>Content Type</a> to be used (Default: application/json)
---@param compress boolean Whether or not to compress the content with gzip (Default: false)
---@param headers table The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers'>Headers</a> to be used (Default: {})
---@return table @the data in the format { Status, Data }
function HTTP_meta.RequestSync(uri, endpoint, method, data, content_type, compress, headers) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Retrieve Assets Data from Asset Packs.
---@class Assets
Assets_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing information about all loaded Asset Packs
---@param asset_pack_path string The Asset Pack path to get the assets 
---@return table @in the format <code>[{Name, Path, Author, Version}, ...]</code>
function Assets_meta.GetAssetPacks(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Animation Assets Keys from an AssetPack
---@param asset_pack_path string The Asset Pack path to get the assets 
---@return table @array of strings
function Assets_meta.GetAnimations(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Map Asset Keys from an AssetPack
---@param asset_pack_path string The Asset Pack path to get the assets 
---@return table @array of strings
function Assets_meta.GetMaps(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Materials Asset Keys from an AssetPack
---@param asset_pack_path string The Asset Pack path to get the assets 
---@return table @array of strings
function Assets_meta.GetMaterials(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Particle Assets Keys from an AssetPack
---@param asset_pack_path string The Asset Pack path to get the assets 
---@return table @array of strings
function Assets_meta.GetParticles(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Sound Assets Keys from an AssetPack
---@param asset_pack_path string The Asset Pack path to get the assets 
---@return table @array of strings
function Assets_meta.GetSounds(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Skeletal Mesh Asset Keys from an AssetPack
---@param asset_pack_path string The Asset Pack path to get the assets 
---@return table @array of strings
function Assets_meta.GetSkeletalMeshes(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Static Mesh Assets Keys from an AssetPack
---@param asset_pack_path string The Asset Pack path to get the assets 
---@return table @array of strings
function Assets_meta.GetStaticMeshes(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets a list containing all Other Assets Keys from an AssetPack
---@param asset_pack_path string The Asset Pack path to get the assets 
---@return table @array of strings
function Assets_meta.GetOthers(asset_pack_path) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Characters represents Actors which can be possessed, can move and interact with world. They are the default Skeletal Mesh Character built for nanos world.
---@class Character : Actor, Paintable
Character_meta = {}

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Characters represents Actors which can be possessed, can move and interact with world. They are the default Skeletal Mesh Character built for nanos world.
---@return Character @Instance of Character
function Character() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Do damage to a character
---@param damage number 
---@param bone_name string (Default: )
---@param damage_type DamageType (Default: DamageType.Shot)
---@param from_direction Vector (Default: Vector(0, 0, 0))
---@param instigator Player The player which caused the damage (Default: nil)
---@param causer any The object which caused the damage (Default: nil)
---@return number @the damage applied
function Character_meta:ApplyDamage(damage, bone_name, damage_type, from_direction, instigator, causer) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Spawns and Attaches a SkeletalMesh into this Character
---@param id string Used further for removing or applying material settings on it 
---@param skeletal_mesh_asset SkeletalMeshPath (Default: )
function Character_meta:AddSkeletalMeshAttached(id, skeletal_mesh_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Spawns and Attaches a StaticMesh into this Character
---@param id string Used further for removing or applying material settings on it 
---@param static_mesh_asset StaticMeshPath (Default: )
---@param socket string (Default: )
---@param relative_location Vector (Default: Vector(0, 0, 0))
---@param relative_rotation Rotator (Default: Rotator(0, 0, 0))
function Character_meta:AddStaticMeshAttached(id, static_mesh_asset, socket, relative_location, relative_rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Drops any Pickable the Character is holding
function Character_meta:Drop() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Enters the Vehicle at Seat (0 - Driver)
---@param vehicle Vehicle 
---@param seat number (Default: 0)
function Character_meta:EnterVehicle(vehicle, seat) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Gives a Prop to the Character
---@param prop Prop 
function Character_meta:GrabProp(prop) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Hides a bone of this Character
---@param bone_name string Bone to hide (Default: )
function Character_meta:HideBone(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---UnHide a bone of this Character
---@param bone_name string Bone to unhide 
function Character_meta:UnHideBone(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if a bone is hidden
---@param bone_name string Bone to check 
---@return boolean @if the bone is hidden
function Character_meta:IsBoneHidden(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Triggers this Character to jump
function Character_meta:Jump() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Leaves the current Vehicle
function Character_meta:LeaveVehicle() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---AI: Tries to make this Character to look at Location
---@param location Vector World location to look 
function Character_meta:LookAt(location) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---AI: Makes this Character to walk to the Location
---@param location Vector 
---@param acceptance_radius number (Default: 50)
function Character_meta:MoveTo(location, acceptance_radius) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---AI: Makes this Character to follow another actor
---@param actor Actor Actor to follow 
---@param acceptance_radius number Radius to consider success (Default: 50)
---@param stop_on_succeed boolean Whether to stop when reaching the target (Default: false)
---@param stop_on_fail boolean Whether to stop when failed to reach the target (Default: false)
---@param update_rate number How often to recalculate the AI path (Default: 0.25)
function Character_meta:Follow(actor, acceptance_radius, stop_on_succeed, stop_on_fail, update_rate) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---AI: Stops the movement
function Character_meta:StopMovement() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Gives a Melee/Grenade/Weapon (Pickable) to the Character
---@param pickable Pickable 
function Character_meta:PickUp(pickable) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Plays an Animation Montage on this character
---@param animation_path AnimationPath 
---@param slot_type AnimationSlotType (Default: AnimationSlotType.FullBody)
---@param loop_indefinitely boolean (Default: false)
---@param blend_in_time number (Default: 0.25)
---@param blend_out_time number (Default: 0.25)
---@param play_rate number (Default: 1.0)
---@param stop_all_montages boolean Stops all running Montages from the same Group (Default: false)
function Character_meta:PlayAnimation(animation_path, slot_type, loop_indefinitely, blend_in_time, blend_out_time, play_rate, stop_all_montages) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes, if existing, a SkeletalMesh from this Character given it's custom ID
---@param id string 
function Character_meta:RemoveSkeletalMeshAttached(id) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes, if existing, a StaticMesh from this Character given it's custom ID
---@param id string 
function Character_meta:RemoveStaticMeshAttached(id) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes all StaticMeshes attached
function Character_meta:RemoveAllStaticMeshesAttached() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Removes all SkeletalMeshes attached
function Character_meta:RemoveAllSkeletalMeshesAttached() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Respawns the Character, fullying it's Health and moving it to it's Initial Location
---@param location Vector If not passed will use the initial location passed when the Character spawned (Default: initial location)
---@param rotation Rotator (Default: Rotator(0, 0, 0))
function Character_meta:Respawn(location, rotation) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Movement Max Acceleration of this Character
---@param walking number (Default: 768)
---@param parachuting number (Default: 512)
---@param skydiving number (Default: 768)
---@param falling number (Default: 128)
---@param swimming number (Default: 256)
---@param swimming_surface number (Default: 256)
---@param flying number (Default: 1024)
function Character_meta:SetAccelerationSettings(walking, parachuting, skydiving, falling, swimming, swimming_surface, flying) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Movement Braking Settings of this Character
---@param ground_friction number (Default: 2)
---@param braking_friction_factor number (Default: 2)
---@param braking_walking number (Default: 96)
---@param braking_flying number (Default: 3000)
---@param braking_swimming number (Default: 10)
---@param braking_falling number (Default: 0)
function Character_meta:SetBrakingSettings(ground_friction, braking_friction_factor, braking_walking, braking_flying, braking_swimming, braking_falling) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Camera Mode
---@param camera_mode CameraMode 
function Character_meta:SetCameraMode(camera_mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Sets the Camera Offset (only affects TPS)
---@param camera_offset Vector 
function Character_meta:SetCameraOffset(camera_offset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Crouch and to Prone
---@param can_crouch boolean 
function Character_meta:SetCanCrouch(can_crouch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Aim
---@param can_aim boolean 
function Character_meta:SetCanAim(can_aim) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Drop the Picked up item
---@param can_drop boolean 
function Character_meta:SetCanDrop(can_drop) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Sprint
---@param can_sprint boolean 
function Character_meta:SetCanSprint(can_sprint) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Grab any Prop
---@param can_grab_props boolean 
function Character_meta:SetCanGrabProps(can_grab_props) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Pick up any Pickable (Weapon, Grenade, Melee...)
---@param can_pickup boolean 
function Character_meta:SetCanPickupPickables(can_pickup) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to Punch
---@param can_punch boolean 
function Character_meta:SetCanPunch(can_punch) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if this Character is allowed to deploy the Parachute
---@param can_deploy_parachute boolean 
function Character_meta:SetCanDeployParachute(can_deploy_parachute) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets this Character's Capsule size
---@param radius boolean Default is 42 
---@param half_height boolean Default is 96 
function Character_meta:SetCapsuleSize(radius, half_height) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes how much damage this character takes on specific bones
---@param bone_name string 
---@param multiplier number 
function Character_meta:SetDamageMultiplier(bone_name, multiplier) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Death sound when Character dies
---@param sound_asset string 
function Character_meta:SetDeathSound(sound_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Set the Fall Damage multiplier taken when falling from High places
---@param damage number Default is 10 
function Character_meta:SetFallDamageTaken(damage) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Flying Mode
---@param flying_mode boolean 
function Character_meta:SetFlyingMode(flying_mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Field of View multiplier
---@param multiplier number 
function Character_meta:SetFOVMultiplier(multiplier) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets time to transition to HighFalling state
---@param time number Default is 1 second 
function Character_meta:SetHighFallingTime(time) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Gait Mode
---@param mode GaitMode 
function Character_meta:SetGaitMode(mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Gravity Scale
---@param scale number 
function Character_meta:SetGravityScale(scale) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Health of this Character
---@param new_health number 
function Character_meta:SetHealth(new_health) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Set the Impact Damage taken when being roamed by things
---@param damage number Default is 10 
function Character_meta:SetImpactDamageTaken(damage) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets if the Character can receive any damage
---@param is_invulnerable boolean 
function Character_meta:SetInvulnerable(is_invulnerable) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the velocity of the jump
---@param velocity number Default is 450 
function Character_meta:SetJumpZVelocity(velocity) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the MaxHealth of this Character
---@param new_max_health number 
function Character_meta:SetMaxHealth(new_max_health) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Character Mesh on the fly
---@param skeletal_mesh_asset SkeletalMeshPath 
function Character_meta:SetMesh(skeletal_mesh_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Set Morph Target with Name and Value
---@param name string Morph Target Name 
---@param value number 
function Character_meta:SetMorphTarget(name, value) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Returns the value of a Morph Target
---@param name string Morph Target Name 
---@return number @value of the Morph Target
function Character_meta:GetMorphTarget(name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Clear all Morph Target that are set to this Mesh
function Character_meta:ClearMorphTargets() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Returns a table with all morph targets available
---@return table @table with all morph targets available
function Character_meta:GetAllMorphTargetNames() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Applies the physical animation settings to the body given
---@param bone string The body we will be driving 
---@param include_self boolean Whether to modify the given body 
---@param is_local_simulation boolean Whether the drive targets are in world space or local 
---@param orientation_strength boolean The strength used to correct orientation error (Default: 0)
---@param angular_velocity_strength boolean The strength used to correct angular velocity error (Default: 0)
---@param position_strength boolean The strength used to correct linear position error. Only used for non-local simulation (Default: 0)
---@param velocity_strength boolean The strength used to correct linear velocity error. Only used for non-local simulation (Default: 0)
---@param max_linear_force boolean The max force used to correct linear errors (Default: 0)
---@param max_angular_force boolean The max force used to correct angular errors (Default: 0)
function Character_meta:SetPhysicalAnimationSettings(bone, include_self, is_local_simulation, orientation_strength, angular_velocity_strength, position_strength, velocity_strength, max_linear_force, max_angular_force) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Resets all Physical Animation settings
function Character_meta:ResetPhysicalAnimationSettings() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Enables/Disables Character's Movement
---@param is_movement_enabled boolean 
function Character_meta:SetMovementEnabled(is_movement_enabled) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Parachute Texture
---@param texture ImagePath 
function Character_meta:SetParachuteTexture(texture) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Changes the Pain sound when Character takes damage
---@param sound_asset SoundPath 
function Character_meta:SetPainSound(sound_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Set the Punch Damage this Character will apply on others
---@param damage number Default is 15 
function Character_meta:SetPunchDamage(damage) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets Character Ragdoll Mode
---@param ragdoll_enabled boolean 
function Character_meta:SetRagdollMode(ragdoll_enabled) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets all speed multiplier
---@param multiplier number 1 is normal 
function Character_meta:SetSpeedMultiplier(multiplier) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Stance Mode
---@param mode StanceMode 
function Character_meta:SetStanceMode(mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets a Team which will disable damaging same Team Members
---@param team number 0 is neutral and default 
function Character_meta:SetTeam(team) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the View Mode
---@param view_mode ViewMode 
function Character_meta:SetViewMode(view_mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Sets the Weapon's Aim Mode
---@param aim_mode AimMode 
function Character_meta:SetWeaponAimMode(aim_mode) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---Stops an Animation Montage on this character
---@param animation_asset AnimationPath 
function Character_meta:StopAnimation(animation_asset) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---UnGrabs/Drops the Prop the Character is holding
function Character_meta:UnGrabProp() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if Character is in ragdoll mode
---@return boolean @if it's in ragdoll mode
function Character_meta:IsInRagdollMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if is invulnerable
---@return boolean @if is invulnerable
function Character_meta:IsInvulnerable() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if has movement enabled
---@return boolean @if has movement enabled
function Character_meta:IsMovementEnabled() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the camera mode
---@return CameraMode @the camera mode
function Character_meta:GetCameraMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can drop
---@return boolean @if can drop
function Character_meta:GetCanDrop() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can punch
---@return boolean @if can punch
function Character_meta:GetCanPunch() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can aim
---@return boolean @if can aim
function Character_meta:GetCanAim() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can crouch
---@return boolean @if can crouch
function Character_meta:GetCanCrouch() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can sprint
---@return boolean @if can sprint
function Character_meta:GetCanSprint() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can grab props
---@return boolean @if can grab props
function Character_meta:GetCanGrabProps() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets if can pickup Pickables (Weapons, Melee, Grenade...)
---@return boolean @if can pickup Pickables
function Character_meta:GetCanPickupPickables() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Capsule Size
---@return table @table in the format <code>{ Radius, HalfHeight }</code>
function Character_meta:GetCapsuleSize() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/client-only.png?raw=true" height="10"> `Client Side`
---
---Gets a Bone Transform in world space given a bone name
---@param bone_name string 
---@return table @table in the format <code>{ Location, Rotation }</code>
function Character_meta:GetBoneTransform(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Control Rotation
---@return Rotator @the control rotation
function Character_meta:GetControlRotation() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Damage Multiplier of a bone
---@param bone_name string 
---@return number @the damage multiplier of the bone
function Character_meta:GetDamageMultiplier(bone_name) end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Fall Damage
---@return number @the fall damage
function Character_meta:GetFallDamageTaken() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the FallingMode
---@return FallingMode @the FallingMode
function Character_meta:GetFallingMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the FlyingMode
---@return FlyingMode @the FlyingMode
function Character_meta:GetFlyingMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the GaitMode
---@return GaitMode @the GaitMode
function Character_meta:GetGaitMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Grabbed Prop
---@return Prop @the grabbed Prop or nil
function Character_meta:GetGrabbedProp() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the gravity scale
---@return number @the gravity scale
function Character_meta:GetGravityScale() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the current health
---@return number @the health
function Character_meta:GetHealth() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the impact damage taken
---@return number @the impact damage taken
function Character_meta:GetImpactDamageTaken() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Jump Z Velocity
---@return number @the Jump Z Velocity
function Character_meta:GetJumpZVelocity() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Max Health
---@return number @the max health
function Character_meta:GetMaxHealth() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Skeletal Mesh Asset
---@return SkeletalMeshPath @the Skeletal Mesh Asset
function Character_meta:GetMesh() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Moving To location
---@return Vector @the moving to location or Vector(0, 0, 0) if not moving
function Character_meta:GetMovingTo() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Pickable if picking up
---@return Pickable @the Pickable entity or nil
function Character_meta:GetPicked() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the possessing Player
---@return Player @the Player entity or nil
function Character_meta:GetPlayer() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the punch damage
---@return number @the punch damage
function Character_meta:GetPunchDamage() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the speed multiplier
---@return number @the speed multiplier
function Character_meta:GetSpeedMultiplier() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Stance Mode
---@return StanceMode @the StanceMode
function Character_meta:GetStanceMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Swimming Mode
---@return SwimmingMode @the SwimmingMode
function Character_meta:GetSwimmingMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Team
---@return number @the team
function Character_meta:GetTeam() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the entered Vehicle
---@return Vehicle @the Vehicle entity or nil
function Character_meta:GetVehicle() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the View Mode
---@return ViewMode @the ViewMode
function Character_meta:GetViewMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/both.png?raw=true" height="10"> `Client/Server Side`
---
---Gets the Weapon Aim Mode
---@return AimMode @the AimMode
function Character_meta:GetWeaponAimMode() end

---<img src="https://github.com/Derpius/nanosworld-vscode/blob/master/assets/server-only.png?raw=true" height="10"> `Server Side`
---
---The Database entity provides programmers a way to access SQL databases easily through scripting.
---@class Database
Database_meta = {}