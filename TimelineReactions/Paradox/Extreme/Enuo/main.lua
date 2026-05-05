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
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							gVarValue = 2,
							uuid = "64a5d983-c87a-bea2-b005-5614ae74ce53",
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
				timerEndOffset = 160,
				uuid = "216c0f6a-c2cd-8094-a0d4-3f67e592611f",
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
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "284cd3f1-9c46-c117-a87d-aaed647f121f",
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
				timerOffset = -10,
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