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
							gVar = "ACR_TensorRequiem3_CD",
							gVarValue = 2,
							uuid = "284cd3f1-9c46-c117-a87d-aaed647f121f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 302.5,
				name = "[Paradox] Disable CD",
				timelineIndex = 35,
				timeout = 15,
				timerOffset = -10,
				uuid = "0ea421bd-f436-eec1-8e7a-0f74ff3602bf",
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