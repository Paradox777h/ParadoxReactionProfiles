local tbl = 
{
	[23] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_AOE",
							gVarValue = 2,
							uuid = "7c787d02-9889-bbc7-b492-af4bbeeb1c0f",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 154.9,
				name = "[Paradox] Disable AOE",
				timelineIndex = 23,
				uuid = "5804ef91-b34c-6546-9307-4687519530d7",
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
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_SmartDoT",
							gVarValue = 2,
							uuid = "fc3ba107-7cf8-fa86-b343-9d0086ce3a5b",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 154.9,
				name = "[Paradox] Disable Smart DoT",
				timelineIndex = 23,
				uuid = "02d45ace-0231-e038-a65f-37017129a9a5",
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
									"39a99d0c-96cc-b3d0-bc7a-f7c1caf4956a",
									true,
								},
								
								{
									"e1ef4c73-71c8-fc5b-b150-fd93d15b1a19",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_CD",
							gVarValue = 2,
							uuid = "64a5d983-c87a-bea2-b005-5614ae74ce53",
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
									"39a99d0c-96cc-b3d0-bc7a-f7c1caf4956a",
									true,
								},
								
								{
									"e1ef4c73-71c8-fc5b-b150-fd93d15b1a19",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_RadiantFinale",
							gVarValue = 2,
							uuid = "33ee0b87-fee1-f9ae-b6cd-ab2c423cbee9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 14752,
							dequeueIfLuaFalse = true,
							name = "Is Looming Shadow",
							uuid = "39a99d0c-96cc-b3d0-bc7a-f7c1caf4956a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							dequeueIfLuaFalse = true,
							hpValue = 15,
							name = "Is Low HP",
							uuid = "e1ef4c73-71c8-fc5b-b150-fd93d15b1a19",
							version = 3,
						},
					},
				},
				mechanicTime = 154.9,
				name = "[Paradox] Disable CD On Low HP",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 150,
				uuid = "216c0f6a-c2cd-8094-a0d4-3f67e592611f",
				version = 2,
			},
		},
	},
	[28] = 
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
							actionLua = "gUnmakingEXShadowAdd = eventArgs.sourceEntityID\n\nself.used = true",
							conditions = 
							{
								
								{
									"332bbd0e-233c-4e70-865f-faa7c167b416",
									true,
								},
								
								{
									"c70b8dbf-7037-460b-bc27-eb5a69c829c4",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "1cc4bbc3-0f43-f33b-9174-4ae66f1e93a2",
							version = 2.1,
						},
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
							eventEntityContentID = 14756,
							name = "Is Aggressive Shadow",
							uuid = "332bbd0e-233c-4e70-865f-faa7c167b416",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							dequeueIfLuaFalse = true,
							eventArgType = 5,
							eventIntValue = 284,
							name = "Is Add Tether",
							uuid = "c70b8dbf-7037-460b-bc27-eb5a69c829c4",
							version = 3,
						},
					},
				},
				eventType = 15,
				loop = true,
				mechanicTime = 184.2,
				name = "[Paradox] Capture Shadow Add",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 120,
				uuid = "a05ac2a4-6f90-325c-a4d1-d65fb39eba1b",
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
									"332bbd0e-233c-4e70-865f-faa7c167b416",
									true,
								},
								
								{
									"3515b763-0a67-1a11-9f8b-5ca792d81859",
									true,
								},
								
								{
									"bd55855f-c0e8-2873-8901-da0e73a44b27",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_CD",
							name = "Dummy",
							uuid = "2a29b1fd-01d0-0b85-b2a9-333f7eed70f4",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal shadow = TensorCore.mGetEntity(gUnmakingEXShadowAdd)\nlocal h = TensorCore.getHeadingToTarget(player.pos, shadow.pos) + math.pi\n\nTensorCore.API.TensorACR.setLockFaceHeading(h)\nTensorCore.API.TensorACR.toggleLockFace(true)\n\nself.used = true",
							conditions = 
							{
								
								{
									"332bbd0e-233c-4e70-865f-faa7c167b416",
									true,
								},
								
								{
									"3515b763-0a67-1a11-9f8b-5ca792d81859",
									true,
								},
								
								{
									"bd55855f-c0e8-2873-8901-da0e73a44b27",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							name = "Look Away",
							uuid = "1cc4bbc3-0f43-f33b-9174-4ae66f1e93a2",
							version = 2.1,
						},
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
							eventEntityContentID = 14756,
							name = "Is Aggressive Shadow",
							uuid = "332bbd0e-233c-4e70-865f-faa7c167b416",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 50022,
							name = "Is Demon Eye",
							uuid = "3515b763-0a67-1a11-9f8b-5ca792d81859",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "d(\"PDX - Channel - \"..eventArgs.entityID..\" - \"..gUnmakingEXShadowAdd)\n\nreturn (eventArgs.entityID == gUnmakingEXShadowAdd)",
							dequeueIfLuaFalse = true,
							name = "Is Targetting Player",
							uuid = "bd55855f-c0e8-2873-8901-da0e73a44b27",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 184.2,
				name = "[Paradox] Dodge Demon Eye",
				throttleTime = 4000,
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 120,
				uuid = "32eed6d8-687d-ad62-84e7-655a048eeaef",
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
									"332bbd0e-233c-4e70-865f-faa7c167b416",
									true,
								},
								
								{
									"3515b763-0a67-1a11-9f8b-5ca792d81859",
									true,
								},
								
								{
									"bd55855f-c0e8-2873-8901-da0e73a44b27",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_CD",
							name = "Dummy",
							uuid = "2a29b1fd-01d0-0b85-b2a9-333f7eed70f4",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "d(\"PDX - Lockface disabled\")\n\nTensorCore.API.TensorACR.toggleLockFace(false)\n\nself.used = true",
							conditions = 
							{
								
								{
									"332bbd0e-233c-4e70-865f-faa7c167b416",
									true,
								},
								
								{
									"3515b763-0a67-1a11-9f8b-5ca792d81859",
									true,
								},
								
								{
									"bd55855f-c0e8-2873-8901-da0e73a44b27",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							name = "Look Away",
							uuid = "1cc4bbc3-0f43-f33b-9174-4ae66f1e93a2",
							version = 2.1,
						},
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
							eventEntityContentID = 14756,
							name = "Is Aggressive Shadow",
							uuid = "332bbd0e-233c-4e70-865f-faa7c167b416",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 50022,
							name = "Is Demon Eye",
							uuid = "3515b763-0a67-1a11-9f8b-5ca792d81859",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (eventArgs.entityID == gUnmakingEXShadowAdd)",
							dequeueIfLuaFalse = true,
							name = "Is Targetting Player",
							uuid = "bd55855f-c0e8-2873-8901-da0e73a44b27",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 184.2,
				name = "[Paradox] Disable Lock Face",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 120,
				uuid = "3478d5d2-df30-daf2-aed7-35a8adcf1dd7",
				version = 2,
			},
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_AOE",
							uuid = "7c787d02-9889-bbc7-b492-af4bbeeb1c0f",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 302.5,
				name = "[Paradox] Enable AOE",
				timelineIndex = 35,
				uuid = "f12eb13f-c44c-700b-bb01-9eff42e5ac68",
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
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_SmartDoT",
							uuid = "fc3ba107-7cf8-fa86-b343-9d0086ce3a5b",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 302.5,
				name = "[Paradox] Enable Smart DoT",
				timelineIndex = 35,
				uuid = "d1252934-dde5-640a-bb93-0e486544c445",
				version = 2,
			},
		},
	},
	[42] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "284cd3f1-9c46-c117-a87d-aaed647f121f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_RadiantFinale",
							uuid = "7b0df6a3-2cb4-d5e4-871f-7c5e7f58c0c6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 494.7,
				name = "[Paradox] Enable CD",
				timelineIndex = 42,
				timeout = 15,
				timerOffset = -2,
				uuid = "aef19a7b-df07-9544-944e-6ba6af40cbbd",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	inheritedProfiles = 
	{
		"Paradox\\Extreme\\Enuo\\core",
		"Paradox\\Extreme\\Enuo\\draws",
		"Paradox\\Extreme\\Enuo\\shotcalls",
	},
	timelineName = "enuo-ex",
	version = "1.0.1",
}



return tbl