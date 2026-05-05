local tbl = 
{
	[14] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if table.size(gUnmakingEXOrbs) == 8 then\n    gUnmakingEXOrbs = {}\nend\n\nlocal sourceID = eventArgs.sourceEntityID\nlocal sourceEntity = TensorCore.mGetEntity(sourceID)\nlocal tetherID = eventArgs.newTetherID\nlocal modelID = Argus.getEntityModel(sourceID)\n\nlocal orbData = {\n\tid = sourceEntity.id,\n    x = sourceEntity.pos.x,\n    y = sourceEntity.pos.y,\n    z = sourceEntity.pos.z,\n    yellow = (tetherID == 407),\n    isTankOrb = (modelID == 19910)\n}\n\ntable.insert(gUnmakingEXOrbs, orbData)\n\nself.used = true",
							conditions = 
							{
								
								{
									"1a8e9380-e435-619a-bf34-b9479d0b3246",
									true,
								},
								
								{
									"14088e85-7f8e-6414-b09e-20b432faa27e",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuPLD3_CD",
							uuid = "07715197-545a-2dca-823a-dcef80fa8c1e",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 14751,
							name = "Is Void Orb",
							uuid = "1a8e9380-e435-619a-bf34-b9479d0b3246",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 5,
							eventIntValue = 406,
							name = "Is Orb Tether",
							uuid = "14088e85-7f8e-6414-b09e-20b432faa27e",
							version = 3,
						},
					},
				},
				eventType = 15,
				loop = true,
				mechanicTime = 84.2,
				name = "[Paradox] Capture Orb Tethers",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 10,
				uuid = "e8626128-8702-6db2-8a95-48c8be7a4840",
				version = 2,
			},
			inheritedIndex = 4,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if table.size(gUnmakingEXOrbs) < 8 then\n\td(\"[Paradox] Missing Orbs... WTF?\")\nend\n\nlocal center = { x = 100, y = 0, z = 100 }\n\nfor _, orb in ipairs(gUnmakingEXOrbs) do\n    orb.heading = TensorCore.getHeadingToTarget(center, orb)\nend\n\nlocal anchorHeading = nil\nfor _, orb in ipairs(gUnmakingEXOrbs) do\n    if orb.isTankOrb then\n        anchorHeading = orb.heading\n        break\n    end\nend\n\nfor _, orb in ipairs(gUnmakingEXOrbs) do\n    orb.relativeHeading = (anchorHeading - orb.heading) % (2 * math.pi)\nend\n\ntable.sort(gUnmakingEXOrbs, function(a, b)\n    return a.relativeHeading < b.relativeHeading\nend)\n\nlocal yellows = {}\nlocal purples = {}\n\nfor _, orb in ipairs(gUnmakingEXOrbs) do\n    if orb.yellow then\n        table.insert(yellows, orb)\n    else\n        table.insert(purples, orb)\n    end\nend\n\nlocal assignments = {}\n\nlocal function assignPhase(orbs)\n    local nonTanks = {}\n\n    for _, orb in ipairs(orbs) do\n        if orb.isTankOrb then\n            table.insert(assignments, {\n                orb = orb,\n                label = { text = \"T\", color = 0xFFFFAA00 }\n            })\n        else\n            table.insert(nonTanks, orb)\n        end\n    end\n\n    local labels = {\n        { text = \"H\", color = 0xFF00FF00 },\n        { text = \"M\", color = 0xFF0000FF },\n        { text = \"R\", color = 0xFF0000FF },\n    }\n\n    for i, orb in ipairs(nonTanks) do\n        table.insert(assignments, {\n            orb = orb,\n            label = labels[i]\n        })\n    end\nend\n\nassignPhase(yellows)\nassignPhase(purples)\n\nfor i, assignment in ipairs(assignments) do\n    local orb = assignment.orb\n    local label = assignment.label\n    local radius = orb.isTankOrb and 3 or 1.5\n    local drawer = orb.yellow and TensorCore.getStaticDrawer(0x1A00DCFF, 0.5) or TensorCore.getStaticDrawer(0x1AFCBE03, 0.5)\n\n    drawer:addTimedCircleOnEnt(15000, orb.id, radius)\n\n    AnyoneCore.addTimedWorldTextOnEnt(15000, label.text, orb.id, label.color, true, 2)\nend\n\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "48663bf3-f104-0f12-b7b1-9a33ee8a6669",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 84.2,
				name = "[Paradox] Draw Orb Order",
				timelineIndex = 14,
				timerOffset = 5,
				uuid = "069ad329-8b82-6ec5-b884-e2ac7b60b7a1",
				version = 2,
			},
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if table.size(gUnmakingEXOrbs) == 8 then\n    gUnmakingEXOrbs = {}\nend\n\nlocal sourceID = eventArgs.sourceEntityID\nlocal sourceEntity = TensorCore.mGetEntity(sourceID)\nlocal tetherID = eventArgs.newTetherID\nlocal modelID = Argus.getEntityModel(sourceID)\n\nlocal orbData = {\n\tid = sourceEntity.id,\n    x = sourceEntity.pos.x,\n    y = sourceEntity.pos.y,\n    z = sourceEntity.pos.z,\n    yellow = (tetherID == 407),\n    isTankOrb = (modelID == 19910)\n}\n\ntable.insert(gUnmakingEXOrbs, orbData)\n\nself.used = true",
							conditions = 
							{
								
								{
									"1a8e9380-e435-619a-bf34-b9479d0b3246",
									true,
								},
								
								{
									"14088e85-7f8e-6414-b09e-20b432faa27e",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuPLD3_CD",
							uuid = "07715197-545a-2dca-823a-dcef80fa8c1e",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 14751,
							name = "Is Void Orb",
							uuid = "1a8e9380-e435-619a-bf34-b9479d0b3246",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 5,
							eventIntValue = 406,
							name = "Is Orb Tether",
							uuid = "14088e85-7f8e-6414-b09e-20b432faa27e",
							version = 3,
						},
					},
				},
				eventType = 15,
				loop = true,
				mechanicTime = 632.2,
				name = "[Paradox] Capture Orb Tethers",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 10,
				uuid = "a3d5ee66-d455-b934-a373-68339032334b",
				version = 2,
			},
			inheritedIndex = 4,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if table.size(gUnmakingEXOrbs) < 8 then\n\td(\"[Paradox] Missing Orbs... WTF?\")\nend\n\nlocal center = { x = 100, y = 0, z = 100 }\n\nfor _, orb in ipairs(gUnmakingEXOrbs) do\n    orb.heading = TensorCore.getHeadingToTarget(center, orb)\nend\n\nlocal anchorHeading = nil\nfor _, orb in ipairs(gUnmakingEXOrbs) do\n    if orb.isTankOrb then\n        anchorHeading = orb.heading\n        break\n    end\nend\n\nfor _, orb in ipairs(gUnmakingEXOrbs) do\n    orb.relativeHeading = (anchorHeading - orb.heading) % (2 * math.pi)\nend\n\ntable.sort(gUnmakingEXOrbs, function(a, b)\n    return a.relativeHeading < b.relativeHeading\nend)\n\nlocal yellows = {}\nlocal purples = {}\n\nfor _, orb in ipairs(gUnmakingEXOrbs) do\n    if orb.yellow then\n        table.insert(yellows, orb)\n    else\n        table.insert(purples, orb)\n    end\nend\n\nlocal assignments = {}\n\nlocal function assignPhase(orbs)\n    local nonTanks = {}\n\n    for _, orb in ipairs(orbs) do\n        if orb.isTankOrb then\n            table.insert(assignments, {\n                orb = orb,\n                label = { text = \"T\", color = 0xFFFFAA00 }\n            })\n        else\n            table.insert(nonTanks, orb)\n        end\n    end\n\n    local labels = {\n        { text = \"H\", color = 0xFF00FF00 },\n        { text = \"M\", color = 0xFF0000FF },\n        { text = \"R\", color = 0xFF0000FF },\n    }\n\n    for i, orb in ipairs(nonTanks) do\n        table.insert(assignments, {\n            orb = orb,\n            label = labels[i]\n        })\n    end\nend\n\nassignPhase(yellows)\nassignPhase(purples)\n\nfor i, assignment in ipairs(assignments) do\n    local orb = assignment.orb\n    local label = assignment.label\n    local radius = orb.isTankOrb and 3 or 1.5\n    local drawer = orb.yellow and TensorCore.getStaticDrawer(0x1A00DCFF, 0.5) or TensorCore.getStaticDrawer(0x1AFCBE03, 0.5)\n\n    drawer:addTimedCircleOnEnt(15000, orb.id, radius)\n\n    AnyoneCore.addTimedWorldTextOnEnt(15000, label.text, orb.id, label.color, true, 2)\nend\n\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "48663bf3-f104-0f12-b7b1-9a33ee8a6669",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 632.2,
				name = "[Paradox] Draw Orb Order",
				timelineIndex = 63,
				timerOffset = 5,
				uuid = "c7f8ef15-079e-4ed2-872c-841c0536e987",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "enuo-ex",
	version = "1.0.1",
}



return tbl