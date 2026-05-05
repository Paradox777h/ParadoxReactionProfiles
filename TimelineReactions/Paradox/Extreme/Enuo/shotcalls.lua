local tbl = 
{
	[19] = 
	{
		
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
									"d9493474-7db1-9068-8a7a-348d7c53129a",
									true,
								},
								
								{
									"7a40ad30-8626-3bfb-9479-c2b34c95ca9e",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuDNC3_CD",
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
				loop = true,
				mechanicTime = 134.1,
				name = "[Paradox] TTS Flare Buster",
				timeRange = true,
				timelineIndex = 19,
				timerStartOffset = -10,
				uuid = "265c7e07-5e2a-d6b0-b83a-5166d55fe2eb",
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
							aType = "Alert",
							alertColor = -16711681,
							alertPriority = 4,
							alertTTS = true,
							alertText = "Bait Cleave",
							conditions = 
							{
								
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
							gVar = "ACR_RikuDNC3_CD",
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
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Is Self",
							partyTargetType = "Event Entity",
							uuid = "d9493474-7db1-9068-8a7a-348d7c53129a",
							version = 3,
						},
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
						inheritedIndex = 2,
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 184.2,
				name = "[Paradox] TTS Earthshaker",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 80,
				timerStartOffset = -10,
				uuid = "f423d18e-b7bb-a4ce-9777-5ed1ffbbe1ab",
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