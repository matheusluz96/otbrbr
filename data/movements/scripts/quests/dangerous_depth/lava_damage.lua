function onStepIn(creature, position, fromPosition, toPosition)
	if creature and (creature:isPlayer() or creature:getMaster()) then 
		doTargetCombatHealth(0, creature, COMBAT_FIREDAMAGE, -500, -500, CONST_ME_HITBYFIRE)
	end
	return true
end