local backpack = GetModConfigData("backpack_config");
--local backpack_cooling = GetModConfigData("backpack_cooling_config");

local piggyback = GetModConfigData("piggyback_config");
--local piggyback_cooling = GetModConfigData("piggyback_cooling_config");

local krampus_sack = GetModConfigData("krampus_sack_config");
--local krampus_sack_cooling = GetModConfigData("krampus_sack_cooling_config");

local icepack = GetModConfigData("icepack_config");
--local icepack_cooling = GetModConfigData("icepack_cooling_config");

local sisturn = GetModConfigData("sisturn_config");

local cookpot = GetModConfigData("cookingPot_config")

local endTable = GetModConfigData("endTable_config")

--修改覆盖 tuning values !
	TUNING.PERISH_MUSHROOM_LIGHT_MULT = GetModConfigData("mushroom_light_config");
	
--冰箱	（待做： 分离冰箱和熊包的单独控制）
	TUNING.PERISH_FRIDGE_MULT = GetModConfigData("icebox_config");
	--TUNING.PERISH_COLD_FROZEN_MULT = GetModConfigData("icebox_config");
	
--盐罐
	TUNING.PERISH_SALTBOX_MULT = GetModConfigData("saltbox_config");
	
--厨师包
	--TUNING.PERISH_FOOD_PRESERVER_MULT 
	
--地面物体(宠物/鸟) 需要测试!!!!!!!
	--TUNING.PERISH_GROUND_MULT
	
--打湿
	--TUNING.PERISH_WET_MULT

--普通背包
AddPrefabPostInit("backpack", function(inst)
	if backpack then
		inst:AddTag("fridge")
	end
end)

--小猪包
AddPrefabPostInit("piggyback", function(inst)
	if piggyback then
		inst:AddTag("fridge")
	end
end)

--小偷包
AddPrefabPostInit("krampus_sack", function(inst)
	if krampus_sack then
		inst:AddTag("fridge")
	end
end)

--隔热包
--[[
AddPrefabPostInit("icepack", function(inst)
	inst:RemoveTag("fridge")
	inst:RemoveTag("nocool")
	if icepack then
		inst:AddTag("fridge")
	end
	if not icepack_cooling then
		inst:AddTag("nocool")
	end
end)
]]--

--骨灰盒
AddPrefabPostInit("sisturn", function(inst)
	if sisturn then
		inst:AddTag("fridge")
	end
end)

--烹饪锅
AddPrefabPostInit("cookpot", function(inst)
	if cookpot then
		inst:AddTag("fridge")
	end
end)

--茶几
AddPrefabPostInit("endtable", function(inst)
	if endTable then
		inst:AddTag("fridge")
	end
end)