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
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[49998] = { label = \"[UM-EX] Broken AOE\", source = \"Paradox Reactions\" }\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[49999] = { label = \"[UM-EX] Broken AOE\", source = \"Paradox Reactions\" }\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50000] = { label = \"[UM-EX] Broken AOE\", source = \"Paradox Reactions\" }\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50009] = { label = \"[UM-EX] Broken AOE\", source = \"Paradox Reactions\" }\n\nMoogleTelegraphs.Settings.aoeIDUserSetDonuts[49978] = { name = \"[UM-EX] Correct Donut Size\", radius = 40, source = \"Paradox Reactions\" }\nMoogleTelegraphs.Settings.aoeIDUserSetCones[50005] = { name = \"[UM-EX] Correct Cone Size\", angle = 45, source = \"Paradox Reactions\" }\n\nself.used = true",
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
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_CD",
						name = "Moogle Telegraphs Adjustments",
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
			},
			eventType = 3,
			name = "[UM-EX] Setup",
			uuid = "483e1355-226c-3de5-b72e-070d8169ec70",
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
						alertText = "Light Parties",
						conditions = 
						{
							
							{
								"8330c93f-26b7-17e9-b893-7040ccbbf55e",
								true,
							},
							
							{
								"7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
								true,
							},
							
							{
								"e1a2873c-6f46-a74d-9feb-30da56a77acc",
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
						eventSpellID = 50033,
						name = "Is Dense Emptiness",
						uuid = "7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14749,
						name = "Is Enuo",
						uuid = "e1a2873c-6f46-a74d-9feb-30da56a77acc",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[UM-EX] Dense Emptiness",
			uuid = "e23875f0-cf23-2c4c-a4d1-4bd389fb2610",
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
						alertText = "Pairs",
						conditions = 
						{
							
							{
								"8330c93f-26b7-17e9-b893-7040ccbbf55e",
								true,
							},
							
							{
								"7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
								true,
							},
							
							{
								"e1a2873c-6f46-a74d-9feb-30da56a77acc",
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
						eventSpellID = 50032,
						name = "Is Airy Emptiness",
						uuid = "7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14749,
						name = "Is Enuo",
						uuid = "e1a2873c-6f46-a74d-9feb-30da56a77acc",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[UM-EX] Airy Emptiness",
			uuid = "516d60b5-bee6-e50d-8c38-b4b28c5e6c07",
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
						aType = "Lua",
						actionLua = "self.used = true",
						conditions = 
						{
							
							{
								"8330c93f-26b7-17e9-b893-7040ccbbf55e",
								true,
							},
							
							{
								"7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
								true,
							},
							
							{
								"d9493474-7db1-9068-8a7a-348d7c53129a",
								true,
							},
						},
						gVar = "ACR_TensorRequiem3_CD",
						uuid = "790044c3-9683-aadb-be24-61b292e022cc",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertColor = -16711681,
						alertPriority = 4,
						alertTTS = true,
						alertText = "Move",
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
						gVar = "ACR_TensorRequiem3_CD",
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
						eventSpellID = 50032,
						name = "Is Fire Debuff",
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
			eventType = 8,
			name = "[UM-EX] Fire Debuff",
			throttleTime = 1800,
			uuid = "82c5e6ed-5ef5-5830-b42c-f1a06c88a420",
			version = 2,
		},
		inheritedIndex = 5,
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
						actionLua = "local sourceID = eventArgs.sourceEntityID\nlocal tetherID = eventArgs.newTetherID\nlocal modelID = Argus.getEntityModel(sourceID)\n\nif (tetherID == 406 or tetherID == 407) and modelID == 19910 then\n    local drawer = TensorCore.getStaticDrawer(0x1A9200FF, 0.5)\n    drawer:addTimedCircleOnEnt(15000, sourceID, 3, nil, nil, true)\nend\n\nself.used = true",
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
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_CD",
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
			},
			eventType = 15,
			name = "[UM-EX] Highlight Tank Orb",
			uuid = "9bb2c59e-1fa8-3fb5-ae00-267bc2642ef5",
			version = 2,
		},
		inheritedIndex = 6,
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
						actionLua = "self.used = true",
						conditions = 
						{
							
							{
								"8330c93f-26b7-17e9-b893-7040ccbbf55e",
								true,
							},
							
							{
								"fe007693-b61a-83c9-8b40-bf9b66c0ebb3",
								true,
							},
						},
						gVar = "ACR_TensorRequiem3_CD",
						uuid = "6a90c045-233e-bdc4-820b-df8b0ef69e5d",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertColor = -16711681,
						alertPriority = 4,
						alertTTS = true,
						alertText = "Keep Moving",
						conditions = 
						{
							
							{
								"8330c93f-26b7-17e9-b893-7040ccbbf55e",
								true,
							},
							
							{
								"fe007693-b61a-83c9-8b40-bf9b66c0ebb3",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_CD",
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
						eventSpellID = 50043,
						name = "Is Deep Freeze",
						uuid = "fe007693-b61a-83c9-8b40-bf9b66c0ebb3",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[UM-EX] Deep Freeze",
			throttleTime = 4000,
			timeout = 10,
			uuid = "7f25385d-de70-2b7c-b55f-fd00c302d0b0",
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
						aType = "Lua",
						actionLua = "gUnmakingEXTowerData = {}\n\nself.used = true",
						conditions = 
						{
							
							{
								"711c6ff4-d85c-baf8-978c-0f243c0132a6",
								true,
							},
							
							{
								"1d683c71-358e-8ced-8ee5-3b5694dee38f",
								true,
							},
							
							{
								"2a565615-e572-1ec6-87d0-4f7894961cbc",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_CD",
						uuid = "3ab6c673-7ef7-08f1-8797-5d185db4a52b",
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
						uuid = "711c6ff4-d85c-baf8-978c-0f243c0132a6",
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
						uuid = "1d683c71-358e-8ced-8ee5-3b5694dee38f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 49982,
						name = "Is Looming Emptiness",
						uuid = "2a565615-e572-1ec6-87d0-4f7894961cbc",
						version = 3,
					},
				},
			},
			eventType = 2,
			name = "[UM-EX] Reset Towers",
			uuid = "b4a4d5b0-cd80-935f-afac-64c1a804f39a",
			version = 2,
		},
		inheritedIndex = 9,
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
						actionLua = "if table.size(gUnmakingEXTowerData) == 4 then\n\tgUnmakingEXTowerData = {}\nend\n\nlocal pos = { x = eventArgs.x, y = eventArgs.y, z = eventArgs.z }\ntable.insert(gUnmakingEXTowerData, pos)\n\nself.used = true",
						conditions = 
						{
							
							{
								"d18083b9-6dcf-4c1d-b96a-1dd536cb6938",
								true,
							},
							
							{
								"c506f003-5abf-887f-87dc-77023372573f",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_CD",
						uuid = "532ec2b3-c63b-5181-967f-10eaacaef100",
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
						uuid = "d18083b9-6dcf-4c1d-b96a-1dd536cb6938",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (eventArgs.aoeID == 50013 and eventArgs.contentID == 14752)",
						dequeueIfLuaFalse = true,
						name = "Is Tower AOE",
						uuid = "c506f003-5abf-887f-87dc-77023372573f",
						version = 3,
					},
				},
			},
			eventType = 18,
			name = "[UM-EX] Capture Towers",
			uuid = "e692e0f0-30ff-2e9a-a387-3f9cfc001676",
			version = 2,
		},
		inheritedIndex = 10,
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
						actionLua = "local c = { x = 100, y = 0, z = 100 }\nlocal drawer = TensorCore.getMoogleDrawer()\n\ntable.sort(gUnmakingEXTowerData, function (a, b) \n    local h1 =  TensorCore.getHeadingToTarget(c, a) - math.pi\n    local h2 = TensorCore.getHeadingToTarget(c, b) - math.pi\n        \n    if h1 < 0 then h1 = h1 + 2 * math.pi end\n    if h2 < 0 then h2 = h2 + 2 * math.pi end\n\n    return (h1 > h2)\nend)\n\nfor i, tower in ipairs(gUnmakingEXTowerData) do\n    drawer:addTimedCircle(6700, tower.x, tower.y, tower.z, 5)\n    AnyoneCore.addTimedWorldText(6700, tostring(i), tower, nil, true, 2)\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"db91ee4f-12be-c45e-b98a-90153a3dd817",
								true,
							},
							
							{
								"99c9c235-a7b1-e018-996e-9fb50b0247a8",
								true,
							},
							
							{
								"275eed77-f269-f822-8426-40ce6f2b662a",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorRequiem3_CD",
						uuid = "f45bb9a8-31a7-4398-81aa-e738f2d2260d",
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
						uuid = "db91ee4f-12be-c45e-b98a-90153a3dd817",
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
						uuid = "99c9c235-a7b1-e018-996e-9fb50b0247a8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 50036,
						name = "Is Voidal Turbulence",
						uuid = "275eed77-f269-f822-8426-40ce6f2b662a",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[UM-EX] Draw Tower Numbers",
			uuid = "d47beb8d-1287-103e-a031-02fdb5cef0d5",
			version = 2,
		},
		inheritedIndex = 11,
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl