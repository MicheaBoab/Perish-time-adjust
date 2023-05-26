-- This information tells other players more about the mod
name = "保鲜/反鲜 Perish Time Modifier"
description = "Change perish time for mushroom light/icebox/saltbox"
author = "MicheaBoab"
version = "1.0"

-- This lets other players know if your mod is out of date, update it to match the current version in the game

api_version = 10

dst_compatible = true

-- Can specify a custom icon for this mod!
icon_atlas = "modicon.xml"
icon = "modicon.tex"

all_clients_require_mod = false

client_only_mod = false



server_filter_tags = {}

configuration_options = 
{
	--蘑菇灯
	{
		name = "",
		label = "蘑菇灯 󰀏",
		hover = "",
		default = 0,
		options = {
			{description = "", data = 0},
		},
	},
	{
		name = "mushroom_light_config",
		label = "腐烂速率",
		hover = "Mushroom Light spoilage rate config",
		options =	{
			{description = "默认腐烂速度", data = 0.25, hover = "Default spoil time"},
			{description = "长时间保鲜", data = 0.05, hover = "Spoil way slower"},
			{description = "完全保鲜", data = 0, hover = "Food fresh forever"},
			{description = "神奇的反鲜", data = - 2, hover = "Regain freshness over time"},
		},
		default = 0.25,
	},
	
	--冰箱
	{
		name = "",
		label = "冰箱 󰀏",
		hover = "",
		default = 0,
		options = {
			{description = "", data = 0},
		},
	},
		{
		name = "icebox_config",
		label = "腐烂速率",
		hover = "Ice Box spoilage rate config",
		options =	{
			{description = "默认腐烂速度", data = 0.25, hover = "Default spoil time"},
			{description = "长时间保鲜", data = 0.05, hover = "Spoil way slower"},
			{description = "完全保鲜", data = 0, hover = "Food fresh forever"},
			{description = "神奇的反鲜", data = - 2, hover = "Regain freshness over time"},
		},
		default = 0.5,
	},
	
	--盐盒
	{
		name = "",
		label = "盐盒 󰀏",
		hover = "",
		default = 0,
		options = {
			{description = "", data = 0},
		},
	},
	{
		name = "saltbox_config",
		label = "腐烂速率",
		hover = "Salt Box spoilage rate config",
		options =	{
			{description = "默认腐烂速度", data = 0.25, hover = "Default spoil time"},
			{description = "长时间保鲜", data = 0.05, hover = "Spoil way slower"},
			{description = "完全保鲜", data = 0, hover = "Food fresh forever"},
			{description = "神奇的反鲜", data = - 2, hover = "Regain freshness over time"},
		},
		default = 0.25,
	},
	
	--各种背包
	--[[
	{
		name = "",
		label = "施工中...",
		hover = "",
		default = 0,
		options = {
			{description = "", data = 0},
		},
	},
	]]--
	{
		name = "",
		label = "背包保鲜 󰀏",
		hover = "",
		default = 0,
		options = {
			{description = "", data = 0},
		},
	},
	--普通背包
	{
		name = "backpack_config",
		label = "普通背包",
		hover = "Backpack spoilage rate config",
		options =	{
			{description = "关", data = false, hover = "Spoilage rate (OFF) Vanilla version"},
			{description = "开", data = true, hover = "Spoilage rate (ON) Like fridge"},
		},
		default = false,
	},
	--[[
	{
		name = "backpack_cooling_config",
		label = "普通背包冷却",
		hover = "Backpack cooling function",
		options =	{
			{description = "关", data = false, hover = "Ice Box cooling function (OFF)"},
			{description = "开", data = true, hover = "Ice Box cooling function (ON)"},
		},
		default = false,
	},
	]]--
	--小猪包
	{
		name = "piggyback_config",
		label = "小猪包",
		hover = "Piggyback spoilage rate config",
		options =	{
			{description = "关", data = false, hover = "Spoilage rate (OFF) Vanilla version"},
			{description = "开", data = true, hover = "Spoilage rate (ON) Like fridge"},
		},
		default = false,
	},
	
	--小偷包
	{
		name = "krampus_sack_config",
		label = "坎普斯包",
		hover = "Krampus sack spoilage rate function",
		options =	{
			{description = "关", data = false, hover = "Spoilage rate (OFF) Vanilla version"},
			{description = "开", data = true, hover = "Spoilage rate (ON) Like fridge"},
		},
		default = false,
	},
	--[[
	{
		name = "krampus_sack_cooling_config",
		label = "坎普斯包冷却",
		hover = "Krampus sack cooling function",
		options =	{
			{description = "关", data = false, hover = "Ice Box cooling function (OFF)"},
			{description = "开", data = true, hover = "Ice Box cooling function (ON)"},
		},
		default = false,
	},
	]]--
	
	--[[
	--隔热包
		{
		name = "icepack_config",
		label = "隔热背包",
		hover = "Ice Box spoilage rate config",
		options =	{
			{description = "关", data = false, hover = "Spoilage rate (OFF) Vanilla version"},
			{description = "开", data = true, hover = "Spoilage rate (ON) Like fridge"},
		},
		default = true,
	},
	{
		name = "icepack_cooling_config",
		label = "隔热背包冷却",
		hover = "Ice Box cooling function",
		options =	{
			{description = "关", data = false, hover = "Ice Box cooling function (OFF)"},
			{description = "开", data = true, hover = "Ice Box cooling function (ON)"},
		},
		default = false,
	},
	]]--
	
	--骨灰盒
	{
		name = "",
		label = "骨灰盒 󰀏",
		hover = "Sisturn",
		default = 0,
		options = {
			{description = "", data = 0},
		},
	},
	{
		name = "sisturn_config",
		label = "姐妹骨灰盒",
		hover = "Sisturn spoilage rate config",
		options =	{
			{description = "关", data = false, hover = "Spoilage rate (OFF) Vanilla version"},
			{description = "开", data = true, hover = "Spoilage rate (ON) Like fridge"},
		},
		default = false,
	},
	
		--烹饪锅
	{
		name = "",
		label = "烹饪锅 󰀏",
		hover = "CookingPot",
		default = 0,
		options = {
			{description = "", data = 0},
		},
	},
	{
		name = "cookingPot_config",
		label = "烹饪锅",
		hover = "CookingPot spoilage rate config",
		options =	{
			{description = "关", data = false, hover = "Spoilage rate (OFF) Vanilla version"},
			{description = "开", data = true, hover = "Spoilage rate (ON) Like fridge"},
		},
		default = false,
	},
	
		--茶几
	{
		name = "",
		label = "茶几 󰀏",
		hover = "EndTable",
		default = 0,
		options = {
			{description = "", data = 0},
		},
	},
	{
		name = "endTable_config",
		label = "烹饪锅",
		hover = "EndTable spoilage rate config",
		options =	{
			{description = "关", data = false, hover = "Spoilage rate (OFF) Vanilla version"},
			{description = "开", data = true, hover = "Spoilage rate (ON) Like fridge"},
		},
		default = false,
	},
}

priority = 1024.0