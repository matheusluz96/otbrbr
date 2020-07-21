local destination = {
	[64007] = Position(33345, 31347, 7),
	[64008] = Position(33357, 31308, 4),
	[64009] = Position(33382, 31292, 7),
	[64010] = Position(33327, 31351, 7),
	[64011] = Position(33201, 31765, 1),
	[64012] = Position(33327, 31351, 7),
	[57602] = Position(33329, 31332, 9),
	[57699] = Position(33308, 31325, 8),
	[57604] = Position(33363, 31342, 9),
	[3255] = Position(3347, 31345, 8)
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local teleport = destination[item.actionid]
	if teleport then
		player:teleportTo(teleport)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		teleport:sendMagicEffect(CONST_ME_TELEPORT)
	end

	return true
end
