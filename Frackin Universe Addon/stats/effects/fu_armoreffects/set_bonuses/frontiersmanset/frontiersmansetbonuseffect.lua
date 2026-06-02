require "/stats/effects/fu_armoreffects/setbonuses_common.lua"
setName="fu_frontiersmanset"

-- weaponBonus={
	-- {stat = "powerMultiplier", effectiveMultiplier = 1.19}
-- }

armorBonus={
	{stat = "broadswordMastery", amount = 0.19},
	{stat = "shortswordMastery", amount = 0.19},
	{stat = "spearMastery", amount = 0.19},
	{stat = "daggerMastery", amount = 0.19},
	{stat = "hammerMastery", amount = 0.19},
	{stat = "axeMastery", amount = 0.19}
}

function init()
	setSEBonusInit(setName)
	-- effectHandlerList.weaponBonusHandle=effect.addStatModifierGroup({})

	-- checkWeapons()

	effectHandlerList.armorBonusHandle=effect.addStatModifierGroup(armorBonus)
end

function update(dt)
	if not checkSetWorn(self.setBonusCheck) then
		effect.expire()
	-- else

		-- checkWeapons()
	end
end

-- function checkWeapons()
	-- local weapons=weaponCheck({"broadsword","shortsword","spear","dagger","hammer","axe"})

	-- if weapons["either"] then
		-- effect.setStatModifierGroup(effectHandlerList.weaponBonusHandle,weaponBonus)
	-- else
		-- effect.setStatModifierGroup(effectHandlerList.weaponBonusHandle,{})
	-- end
-- end
