--[[ 
player_manager.AddValidModel( "Player model name", "Player model path" ) --Associates a simplified name with a path to a valid player model

AddCSLuaFile( "Name/Path to the Lua file that should be sent" ) --Marks a Lua file to be sent to clients when they join the server

player_manager.AddValidHands( "Player model name", "Hnads model path", "Skin to apply to the hands", "Bodygroups to apply to the hands" ) --Assigns view model hands to player model

list.Set( "The list identifier", The key in the list to set, The item to set to the list as key ) --Sets a specific position in the named list to a value

关于变量：
1. Lua中的变量无论是在语句块还是在函数里均默认为全局变量
2. 可以用 local 显式声明为局部变量，其作用域为从声明位置开始到所在语句块结束
2. 变量的默认值为 nil

NPC的keylist常用键值对示例：
NPC = { Model = "models/.mdl", Category = "", KeyValues = { = }, Squadname = "", Name = "", Class = "", Health = "", Weapons = { "" }, Numgrenades = "" }
--]]


------ Global Settings ------

AddCSLuaFile() -- (While no parameter is specified) Adds the current file to the list of files to be downloaded by clients


------ Player Settings ------

Player_model_name = " PM"
Player_model_path = "models/.mdl"
Hands_model_path = "models/.mdl"

list.Set("PlayerOptionsModel", Player_model_name, Player_model_path)
player_manager.AddValidModel(Player_model_name, Player_model_path)
player_manager.AddValidHands(Player_model_name, Hands_model_path, 0, "00000000")


------ NPCs Settings ------

Category = " NPCs"

-- Friendly
local NPC =
{
    Model = "models/.mdl",
    Category = Category,
    Class = "npc_citizen",
    KeyValues = { citizentype = 4 },
    Squadname = "",
    Name = " (Friendly)",
    Health = "100",
    Weapons = {"weapon_smg1"},
    Numgrenades = "1"
}

list.Set("NPC", "npc_gorza_f", NPC)

-- Hostile
local NPC =
{
    Model = "models/.mdl",
    Category = Category,
    Class = "npc_combine_s",
    Squadname = "",
    Name = " (Hostile)",
    Health = "300",
    Weapons = {"weapon_smg1"},
    Numgrenades = "3"
}

list.Set("NPC", "npc_gorza_h", NPC)
