
--冰箱
	TUNING.PERISH_FRIDGE_MULT = GetModConfigData("fridge_config");
	
--盐罐
	TUNING.PERISH_SALTBOX_MULT = GetModConfigData("saltbox_config");
	
-- 蘑菇灯
	TUNING.PERISH_MUSHROOM_LIGHT_MULT = GetModConfigData("mushroom_light_config");

-- 背包
	local backpack = GetModConfigData("backpack_config");
	
	AddPrefabPostInit("backpack", function(inst)
		if backpack ~= 0 then
			inst:AddTag("fridge")
			if backpack == 2 then
				inst:AddTag("nocool")
			end
		end
	end)
	
-- 小猪包
	local piggyback = GetModConfigData("piggyback_config");
	
	AddPrefabPostInit("piggyback", function(inst)
		if piggyback ~= 0 then
			inst:AddTag("fridge")
			if piggyback == 2 then
				inst:AddTag("nocool")
			end
		end
	end)


-- 隔热背包
	local icepack = GetModConfigData("icepack_config");

	AddPrefabPostInit("icepack", function(inst)
		if icepack == 1 then
			inst:RemoveTag("nocool")
		end
	end)

-- 小偷包
	local krampus_sack = GetModConfigData("krampus_sack_config");

	AddPrefabPostInit("krampus_sack", function(inst)
		if krampus_sack ~= 0 then
			inst:AddTag("fridge")
			if krampus_sack == 2 then
				inst:AddTag("nocool")
			end
		end
	end)

--骨灰盒
	local sisturn = GetModConfigData("sisturn_config");

	AddPrefabPostInit("sisturn", function(inst)
		if sisturn then
			inst:AddTag("fridge")
		end
	end)

--烹饪锅
	local cookpot = GetModConfigData("cookingPot_config")

	AddPrefabPostInit("cookpot", function(inst)
		if cookpot then
			inst:AddTag("fridge")
		end
	end)

--茶几
	local endTable = GetModConfigData("endTable_config")

	AddPrefabPostInit("endtable", function(inst)
		if endTable then
			inst:AddTag("fridge")
		end
	end)

