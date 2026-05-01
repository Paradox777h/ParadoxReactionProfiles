local tbl = 
{
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			name = "--Unmaking EX",
			uuid = "00372a00-9a8c-1cec-88c4-59e81f8ad365",
			version = 2,
		},
		inheritedIndex = 1,
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
						actionLua = "gUnmakingEXOrbs = {}\nself.used = true",
						conditions = 
						{
							
							{
								"8cfad780-b2ee-a819-84ee-fe7f66698514",
								true,
							},
							
							{
								"f61ea252-ae4b-98b2-bfd9-d996f699ca96",
								true,
							},
							
							{
								"116582c4-ef28-a0de-927d-18e633b2ae64",
								true,
							},
							
							{
								"d1e428ae-1ce4-2ef7-b498-437489f388f5",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_CD",
						uuid = "cc8db830-3e78-07b1-9aa1-ec8a4c562d5d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1362,
						name = "Is Unmaking-EX",
						uuid = "8cfad780-b2ee-a819-84ee-fe7f66698514",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14749,
						name = "Is Enuo",
						uuid = "f61ea252-ae4b-98b2-bfd9-d996f699ca96",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 50049,
						name = "Is Meteorain",
						uuid = "116582c4-ef28-a0de-927d-18e633b2ae64",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorReactions_CurrentTimer < 30.0",
						name = "Is Early In Fight",
						uuid = "d1e428ae-1ce4-2ef7-b498-437489f388f5",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[UM-EX] Setup",
			uuid = "34820c0d-120e-c399-9262-59f4212b7398",
			version = 2,
		},
		inheritedIndex = 2,
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
						actionLua = "if table.size(gUnmakingEXOrbs) == 8 then\n    gUnmakingEXOrbs = {}\nend\n\nlocal sourceID = eventArgs.sourceEntityID\nlocal sourceEntity = TensorCore.mGetEntity(sourceID)\nlocal tetherID = eventArgs.newTetherID\nlocal modelID = Argus.getEntityModel(sourceID)\n\nlocal orbData = {\n\tid = sourceEntity.id,\n    x = sourceEntity.pos.x,\n    y = sourceEntity.pos.y,\n    z = sourceEntity.pos.z,\n    yellow = (tetherID == 407),\n    isTankOrb = (modelID == 19910)\n}\n\ntable.insert(gUnmakingEXOrbs, orbData)\n\nself.used = true",
						conditions = 
						{
							
							{
								"79797b6d-6951-9249-ad21-bc9fc4e5a377",
								true,
							},
							
							{
								"1a8e9380-e435-619a-bf34-b9479d0b3246",
								true,
							},
							
							{
								"14088e85-7f8e-6414-b09e-20b432faa27e",
								true,
							},
						},
						gVar = "ACR_RikuPLD3_CD",
						name = "Store Orb Data",
						uuid = "07715197-545a-2dca-823a-dcef80fa8c1e",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if table.size(gUnmakingEXOrbs) == 8 then\n    local center = { x = 100, y = 0, z = 100 }\n\n    for _, orb in ipairs(gUnmakingEXOrbs) do\n        orb.heading = TensorCore.getHeadingToTarget(center, orb)\n    end\n\n    local anchorHeading = nil\n    for _, orb in ipairs(gUnmakingEXOrbs) do\n        if orb.isTankOrb then\n            anchorHeading = orb.heading\n            break\n        end\n    end\n\n    for _, orb in ipairs(gUnmakingEXOrbs) do\n        orb.relativeHeading = (anchorHeading - orb.heading) % (2 * math.pi)\n    end\n\n    table.sort(gUnmakingEXOrbs, function(a, b)\n        return a.relativeHeading < b.relativeHeading\n    end)\n\n    local yellows = {}\n    local purples = {}\n\n    for _, orb in ipairs(gUnmakingEXOrbs) do\n        if orb.yellow then\n            table.insert(yellows, orb)\n        else\n            table.insert(purples, orb)\n        end\n    end\n\n    local assignments = {}\n\n    local function assignPhase(orbs)\n        local nonTanks = {}\n\n        for _, orb in ipairs(orbs) do\n            if orb.isTankOrb then\n                table.insert(assignments, {\n                    orb = orb,\n                    label = { text = \"T\", color = 0xFFFFAA00 }\n                })\n            else\n                table.insert(nonTanks, orb)\n            end\n        end\n\n        local labels = {\n            { text = \"H\", color = 0xFF00FF00 },\n            { text = \"M\", color = 0xFF0000FF },\n            { text = \"R\", color = 0xFF0000FF },\n        }\n\n        for i, orb in ipairs(nonTanks) do\n            table.insert(assignments, {\n                orb = orb,\n                label = labels[i]\n            })\n        end\n    end\n\n    assignPhase(yellows)\n    assignPhase(purples)\n\n    for i, assignment in ipairs(assignments) do\n        local orb = assignment.orb\n        local label = assignment.label\n        local radius = orb.isTankOrb and 3 or 1.5\n        local drawer = orb.yellow and TensorCore.getStaticDrawer(0x1A00DCFF, 0.5) or TensorCore.getStaticDrawer(0x1AFCBE03, 0.5)\n\n        drawer:addTimedCircleOnEnt(15000, orb.id, radius)\n\n        AnyoneCore.addTimedWorldTextOnEnt(15000, label.text, orb.id, label.color, true, 2)\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"79797b6d-6951-9249-ad21-bc9fc4e5a377",
								true,
							},
							
							{
								"1a8e9380-e435-619a-bf34-b9479d0b3246",
								true,
							},
							
							{
								"14088e85-7f8e-6414-b09e-20b432faa27e",
								true,
							},
						},
						gVar = "ACR_TensorRequiem3_CD",
						name = "Draw Orb Order",
						uuid = "0e849449-f1b7-3c00-9ed2-294a5dbd5a84",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1362,
						name = "Is Unmaking-EX",
						uuid = "79797b6d-6951-9249-ad21-bc9fc4e5a377",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
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
			name = "[UM-EX] Draw Orbs",
			uuid = "33172e34-4c85-552c-8709-30c68ba5616a",
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
						aType = "Alert",
						alertColor = -16711681,
						alertPriority = 4,
						alertTTS = true,
						alertText = "Take Flare Outside",
						conditions = 
						{
							
							{
								"8330c93f-26b7-17e9-b893-7040ccbbf55e",
								true,
							},
							
							{
								"d9493474-7db1-9068-8a7a-348d7c53129a",
								true,
							},
							
							{
								"7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
								true,
							},
						},
						endIfUsed = true,
						uuid = "68f6dccd-d0ae-3565-ad52-1770ddfcf4dc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1362,
						name = "Is Unmaking-EX",
						uuid = "8330c93f-26b7-17e9-b893-7040ccbbf55e",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventBuffID = 4562,
						eventMarkerID = 327,
						eventSpellID = 50032,
						name = "Is Flare Marker",
						uuid = "7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						dequeueIfLuaFalse = true,
						name = "Is Self",
						partyTargetType = "Event Entity",
						uuid = "d9493474-7db1-9068-8a7a-348d7c53129a",
						version = 3,
					},
				},
			},
			eventType = 4,
			name = "[UM-EX] Flare Buster",
			uuid = "07d1a26b-f716-eba4-b936-0c0e8323c978",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Alert",
						alertColor = -16711681,
						alertPriority = 4,
						alertTTS = true,
						alertText = "Bait Cleave",
						conditions = 
						{
							
							{
								"8330c93f-26b7-17e9-b893-7040ccbbf55e",
								true,
							},
							
							{
								"d9493474-7db1-9068-8a7a-348d7c53129a",
								true,
							},
							
							{
								"7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
								true,
							},
						},
						endIfUsed = true,
						uuid = "68f6dccd-d0ae-3565-ad52-1770ddfcf4dc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1362,
						name = "Is Unmaking-EX",
						uuid = "8330c93f-26b7-17e9-b893-7040ccbbf55e",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventBuffID = 4562,
						eventMarkerID = 721,
						eventSpellID = 50032,
						name = "Is Earthshaker",
						uuid = "7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						dequeueIfLuaFalse = true,
						name = "Is Self",
						partyTargetType = "Event Entity",
						uuid = "d9493474-7db1-9068-8a7a-348d7c53129a",
						version = 3,
					},
				},
			},
			eventType = 4,
			name = "[UM-EX] Earthshaker",
			uuid = "f6111d4b-14df-27cb-abdf-d05d77f72cc0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"721ec58b-dd6e-672c-93e5-250f9b3d95d0",
								true,
							},
							
							{
								"2277a705-4a80-f024-95d7-44b2f44f65fb",
								true,
							},
							
							{
								"868a2d13-1c48-2365-926d-c0b5473c7f0d",
								true,
							},
						},
						gVar = "ACR_TensorRequiem3_CD",
						gVarValue = 2,
						uuid = "284cd3f1-9c46-c117-a87d-aaed647f121f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"721ec58b-dd6e-672c-93e5-250f9b3d95d0",
								true,
							},
							
							{
								"2277a705-4a80-f024-95d7-44b2f44f65fb",
								true,
							},
							
							{
								"868a2d13-1c48-2365-926d-c0b5473c7f0d",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_CD",
						uuid = "15b3f88f-6252-5780-9b69-0a8cafcedb2f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1362,
						name = "Is Unmaking-EX",
						uuid = "721ec58b-dd6e-672c-93e5-250f9b3d95d0",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14754,
						name = "Is Beacon",
						uuid = "2277a705-4a80-f024-95d7-44b2f44f65fb",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 3,
						name = "Is Beacon Targetable",
						uuid = "868a2d13-1c48-2365-926d-c0b5473c7f0d",
						version = 3,
					},
					inheritedIndex = 1,
				},
			},
			eventType = 26,
			name = "[UM-EX] Toggle CD For Intermission",
			throttleTime = 12000,
			timeout = 15,
			uuid = "007c0d95-ee8d-9c52-a176-45da037cfe26",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"6400b9c2-4f0c-ed13-8660-845c8169cfdf",
								true,
							},
							
							{
								"a09f268a-1dfe-2dcd-ba30-3250c7fedb98",
								true,
							},
							
							{
								"022cfd69-ac35-b709-a5db-75207988f704",
								true,
							},
						},
						gVar = "ACR_TensorRequiem3_AOE",
						gVarValue = 2,
						uuid = "7c787d02-9889-bbc7-b492-af4bbeeb1c0f",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"6400b9c2-4f0c-ed13-8660-845c8169cfdf",
								true,
							},
							
							{
								"a09f268a-1dfe-2dcd-ba30-3250c7fedb98",
								true,
							},
							
							{
								"022cfd69-ac35-b709-a5db-75207988f704",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_SmartDoT",
						gVarValue = 2,
						uuid = "316d2994-f925-178c-a315-303ac9732331",
						version = 2.1,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"6400b9c2-4f0c-ed13-8660-845c8169cfdf",
								true,
							},
							
							{
								"2277a705-4a80-f024-95d7-44b2f44f65fb",
								true,
							},
							
							{
								"868a2d13-1c48-2365-926d-c0b5473c7f0d",
								true,
							},
						},
						gVar = "ACR_TensorRequiem3_AOE",
						uuid = "cdc3db13-3bdd-d260-a766-5fff3bd0cde3",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"6400b9c2-4f0c-ed13-8660-845c8169cfdf",
								true,
							},
							
							{
								"2277a705-4a80-f024-95d7-44b2f44f65fb",
								true,
							},
							
							{
								"868a2d13-1c48-2365-926d-c0b5473c7f0d",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_SmartDoT",
						uuid = "15b3f88f-6252-5780-9b69-0a8cafcedb2f",
						version = 2.1,
					},
					inheritedIndex = 4,
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1362,
						name = "Is Unmaking-EX",
						uuid = "6400b9c2-4f0c-ed13-8660-845c8169cfdf",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14752,
						name = "Is Looming Shadow",
						uuid = "a09f268a-1dfe-2dcd-ba30-3250c7fedb98",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 3,
						name = "Is Looming Shadow Targetable",
						uuid = "022cfd69-ac35-b709-a5db-75207988f704",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14754,
						name = "Is Beacon",
						uuid = "2277a705-4a80-f024-95d7-44b2f44f65fb",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 3,
						name = "Is Beacon Targetable",
						uuid = "868a2d13-1c48-2365-926d-c0b5473c7f0d",
						version = 3,
					},
					inheritedIndex = 1,
				},
			},
			eventType = 26,
			name = "[UM-EX] Toggle AOE For Intermission",
			uuid = "fca0d199-9765-e1ef-9778-4709bf65def9",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl