--[[NewComerGiftsDB.lua
	描述：新手礼包
]]

tLoginGiftItems =
{
	[1026006] =   ----乾元岛等级1礼包
	{
		{itemID = 2001086, itemNum = 1},
		{itemID = 2001091, itemNum = 1},
		{itemID = 2001092, itemNum = 1},
		{itemID = 2001093, itemNum = 1},
		{itemID = 2001094, itemNum = 1},
		{itemID = 2001095, itemNum = 1},
		{itemID = 3011001, itemNum = 20},
		{itemID = 3012001, itemNum = 20},
		{itemID = 3025001, itemNum = 5},
		{itemID = 1026007, itemNum = 1},
	},
	[1026007] =   ----乾元岛等级10礼包
	{
		{itemID = 2010086, itemNum = 1},
		{itemID = 2010091, itemNum = 1},
		{itemID = 2010092, itemNum = 1},
		{itemID = 2010093, itemNum = 1},
		{itemID = 2010094, itemNum = 1},
		{itemID = 2010095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3013005, itemNum = 1},
		{itemID = 1026008, itemNum = 1},
	},
	[1026008] =   ----乾元岛等级20礼包
	{
		{itemID = 2020086, itemNum = 1},
		{itemID = 2020091, itemNum = 1},
		{itemID = 2020092, itemNum = 1},
		{itemID = 2020093, itemNum = 1},
		{itemID = 2020094, itemNum = 1},
		{itemID = 2020095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3021001, itemNum = 1},
		{itemID = 1026009, itemNum = 1},
	},
	[1026009] =   ----乾元岛等级30礼包
	{
		{itemID = 2030086, itemNum = 1},
		{itemID = 2030091, itemNum = 1},
		{itemID = 2030092, itemNum = 1},
		{itemID = 2030093, itemNum = 1},
		{itemID = 2030094, itemNum = 1},
		{itemID = 2030095, itemNum = 1},
		{itemID = 3022001, itemNum = 5},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 1026010, itemNum = 1},
	},
	[1026010] =   ----乾元岛等级40礼包
	{
		{itemID = 2040086, itemNum = 1},
		{itemID = 2040091, itemNum = 1},
		{itemID = 2040092, itemNum = 1},
		{itemID = 2040093, itemNum = 1},
		{itemID = 2040094, itemNum = 1},
		{itemID = 2040095, itemNum = 1},
		{itemID = 3025003, itemNum = 3},
		{itemID = 3025005, itemNum = 3},
		{itemID = 3024006, itemNum = 1},
		{itemID = 1026011, itemNum = 1},
	},
	[1026011] =   ----乾元岛等级50礼包
	{
		{itemID = 2050086, itemNum = 1},
		{itemID = 2050091, itemNum = 1},
		{itemID = 2050092, itemNum = 1},
		{itemID = 3062101, itemNum = 1},
		{itemID = 3024026, itemNum = 2},
		{itemID = 3021013, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 1026012, itemNum = 1},
	},
	[1026012] =   ----乾元岛等级60礼包
	{
		{itemID = 2060086, itemNum = 1},
		{itemID = 2060091, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 3120003, itemNum = 1},
		{itemID = 3120007, itemNum = 1},
		{itemID = 3031006, itemNum = 3},
		{itemID = 3024013, itemNum = 1},
		{itemID = 3024020, itemNum = 1},
	},
	[1026013] =   ----桃源洞等级1礼包
	{
		{itemID = 2001088, itemNum = 1},
		{itemID = 2001091, itemNum = 1},
		{itemID = 2001092, itemNum = 1},
		{itemID = 2001093, itemNum = 1},
		{itemID = 2001094, itemNum = 1},
		{itemID = 2001095, itemNum = 1},
		{itemID = 3011001, itemNum = 20},
		{itemID = 3012001, itemNum = 20},
		{itemID = 3025001, itemNum = 5},
		{itemID = 1026014, itemNum = 1},
	},
	[1026014] =   ----桃源洞等级10礼包
	{
		{itemID = 2010088, itemNum = 1},
		{itemID = 2010091, itemNum = 1},
		{itemID = 2010092, itemNum = 1},
		{itemID = 2010093, itemNum = 1},
		{itemID = 2010094, itemNum = 1},
		{itemID = 2010095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3013005, itemNum = 1},
		{itemID = 1026015, itemNum = 1},
	},
	[1026015] =   ----桃源洞等级20礼包
	{
		{itemID = 2020088, itemNum = 1},
		{itemID = 2020091, itemNum = 1},
		{itemID = 2020092, itemNum = 1},
		{itemID = 2020093, itemNum = 1},
		{itemID = 2020094, itemNum = 1},
		{itemID = 2020095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3021001, itemNum = 1},
		{itemID = 1026016, itemNum = 1},
	},
	[1026016] =   ----桃源洞等级30礼包
	{
		{itemID = 2030088, itemNum = 1},
		{itemID = 2030091, itemNum = 1},
		{itemID = 2030092, itemNum = 1},
		{itemID = 2030093, itemNum = 1},
		{itemID = 2030094, itemNum = 1},
		{itemID = 2030095, itemNum = 1},
		{itemID = 3022001, itemNum = 5},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 1026017, itemNum = 1},
	},
	[1026017] =   ----桃源洞等级40礼包
	{
		{itemID = 2040088, itemNum = 1},
		{itemID = 2040091, itemNum = 1},
		{itemID = 2040092, itemNum = 1},
		{itemID = 2040093, itemNum = 1},
		{itemID = 2040094, itemNum = 1},
		{itemID = 2040095, itemNum = 1},
		{itemID = 3025003, itemNum = 3},
		{itemID = 3025005, itemNum = 3},
		{itemID = 3024006, itemNum = 1},
		{itemID = 1026018, itemNum = 1},
	},
	[1026018] =   ----桃源洞等级50礼包
	{
		{itemID = 2050088, itemNum = 1},
		{itemID = 2050091, itemNum = 1},
		{itemID = 2050092, itemNum = 1},
		{itemID = 3062101, itemNum = 1},
		{itemID = 3024026, itemNum = 2},
		{itemID = 3021013, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 1026019, itemNum = 1},
	},
	[1026019] =   ----桃源洞等级60礼包
	{
		{itemID = 2060088, itemNum = 1},
		{itemID = 2060091, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 3120003, itemNum = 1},
		{itemID = 3120007, itemNum = 1},
		{itemID = 3031006, itemNum = 3},
		{itemID = 3024013, itemNum = 1},
		{itemID = 3024020, itemNum = 1},
	},
	[1026020] =   ----金霞山等级1礼包
	{
		{itemID = 2001090, itemNum = 1},
		{itemID = 2001091, itemNum = 1},
		{itemID = 2001092, itemNum = 1},
		{itemID = 2001093, itemNum = 1},
		{itemID = 2001094, itemNum = 1},
		{itemID = 2001095, itemNum = 1},
		{itemID = 3011001, itemNum = 20},
		{itemID = 3012001, itemNum = 20},
		{itemID = 3025001, itemNum = 5},
		{itemID = 1026021, itemNum = 1},
	},
	[1026021] =   ----金霞山等级10礼包
	{
		{itemID = 2010090, itemNum = 1},
		{itemID = 2010091, itemNum = 1},
		{itemID = 2010092, itemNum = 1},
		{itemID = 2010093, itemNum = 1},
		{itemID = 2010094, itemNum = 1},
		{itemID = 2010095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3013005, itemNum = 1},
		{itemID = 1026022, itemNum = 1},
	},
	[1026022] =   ----金霞山等级20礼包
	{
		{itemID = 2020090, itemNum = 1},
		{itemID = 2020091, itemNum = 1},
		{itemID = 2020092, itemNum = 1},
		{itemID = 2020093, itemNum = 1},
		{itemID = 2020094, itemNum = 1},
		{itemID = 2020095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3021001, itemNum = 1},
		{itemID = 1026023, itemNum = 1},
	},
	[1026023] =   ----金霞山等级30礼包
	{
		{itemID = 2030090, itemNum = 1},
		{itemID = 2030091, itemNum = 1},
		{itemID = 2030092, itemNum = 1},
		{itemID = 2030093, itemNum = 1},
		{itemID = 2030094, itemNum = 1},
		{itemID = 2030095, itemNum = 1},
		{itemID = 3022001, itemNum = 5},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 1026024, itemNum = 1},
	},
	[1026024] =   ----金霞山等级40礼包
	{
		{itemID = 2040090, itemNum = 1},
		{itemID = 2040091, itemNum = 1},
		{itemID = 2040092, itemNum = 1},
		{itemID = 2040093, itemNum = 1},
		{itemID = 2040094, itemNum = 1},
		{itemID = 2040095, itemNum = 1},
		{itemID = 3025003, itemNum = 3},
		{itemID = 3025005, itemNum = 3},
		{itemID = 3024006, itemNum = 1},
		{itemID = 1026025, itemNum = 1},
	},
	[1026025] =   ----金霞山等级50礼包
	{
		{itemID = 2050090, itemNum = 1},
		{itemID = 2050091, itemNum = 1},
		{itemID = 2050092, itemNum = 1},
		{itemID = 3062101, itemNum = 1},
		{itemID = 3024026, itemNum = 2},
		{itemID = 3021013, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 1026026, itemNum = 1},
	},
	[1026026] =   ----金霞山等级60礼包
	{
		{itemID = 2060090, itemNum = 1},
		{itemID = 2060091, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 3120003, itemNum = 1},
		{itemID = 3120007, itemNum = 1},
		{itemID = 3031006, itemNum = 3},
		{itemID = 3024013, itemNum = 1},
		{itemID = 3024020, itemNum = 1},
	},
	[1026027] =   ----蓬莱阁等级1礼包
	{
		{itemID = 2001085, itemNum = 1},
		{itemID = 2001091, itemNum = 1},
		{itemID = 2001092, itemNum = 1},
		{itemID = 2001093, itemNum = 1},
		{itemID = 2001094, itemNum = 1},
		{itemID = 2001095, itemNum = 1},
		{itemID = 3011001, itemNum = 20},
		{itemID = 3012001, itemNum = 20},
		{itemID = 3025001, itemNum = 5},
		{itemID = 1026028, itemNum = 1},
	},
	[1026028] =   ----蓬莱阁等级10礼包
	{
		{itemID = 2010085, itemNum = 1},
		{itemID = 2010091, itemNum = 1},
		{itemID = 2010092, itemNum = 1},
		{itemID = 2010093, itemNum = 1},
		{itemID = 2010094, itemNum = 1},
		{itemID = 2010095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3013005, itemNum = 1},
		{itemID = 1026029, itemNum = 1},
	},
	[1026029] =   ----蓬莱阁等级20礼包
	{
		{itemID = 2020085, itemNum = 1},
		{itemID = 2020091, itemNum = 1},
		{itemID = 2020092, itemNum = 1},
		{itemID = 2020093, itemNum = 1},
		{itemID = 2020094, itemNum = 1},
		{itemID = 2020095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3021001, itemNum = 1},
		{itemID = 1026030, itemNum = 1},
	},
	[1026030] =   ----蓬莱阁等级30礼包
	{
		{itemID = 2030085, itemNum = 1},
		{itemID = 2030091, itemNum = 1},
		{itemID = 2030092, itemNum = 1},
		{itemID = 2030093, itemNum = 1},
		{itemID = 2030094, itemNum = 1},
		{itemID = 2030095, itemNum = 1},
		{itemID = 3022001, itemNum = 5},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 1026031, itemNum = 1},
	},
	[1026031] =   ----蓬莱阁等级40礼包
	{
		{itemID = 2040085, itemNum = 1},
		{itemID = 2040091, itemNum = 1},
		{itemID = 2040092, itemNum = 1},
		{itemID = 2040093, itemNum = 1},
		{itemID = 2040094, itemNum = 1},
		{itemID = 2040095, itemNum = 1},
		{itemID = 3025003, itemNum = 3},
		{itemID = 3025005, itemNum = 3},
		{itemID = 3024006, itemNum = 1},
		{itemID = 1026032, itemNum = 1},
	},
	[1026032] =   ----蓬莱阁等级50礼包
	{
		{itemID = 2050085, itemNum = 1},
		{itemID = 2050091, itemNum = 1},
		{itemID = 2050092, itemNum = 1},
		{itemID = 3062101, itemNum = 1},
		{itemID = 3024026, itemNum = 2},
		{itemID = 3021013, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 1026033, itemNum = 1},
	},
	[1026033] =   ----蓬莱阁等级60礼包
	{
		{itemID = 2060085, itemNum = 1},
		{itemID = 2060091, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 3120003, itemNum = 1},
		{itemID = 3120007, itemNum = 1},
		{itemID = 3031006, itemNum = 3},
		{itemID = 3024013, itemNum = 1},
		{itemID = 3024020, itemNum = 1},
	},
	[1026034] =   ----紫阳门等级1礼包
	{
		{itemID = 2001089, itemNum = 1},
		{itemID = 2001091, itemNum = 1},
		{itemID = 2001092, itemNum = 1},
		{itemID = 2001093, itemNum = 1},
		{itemID = 2001094, itemNum = 1},
		{itemID = 2001095, itemNum = 1},
		{itemID = 3011001, itemNum = 20},
		{itemID = 3012001, itemNum = 20},
		{itemID = 3025001, itemNum = 5},
		{itemID = 1026035, itemNum = 1},
	},
	[1026035] =   ----紫阳门等级10礼包
	{
		{itemID = 2010089, itemNum = 1},
		{itemID = 2010091, itemNum = 1},
		{itemID = 2010092, itemNum = 1},
		{itemID = 2010093, itemNum = 1},
		{itemID = 2010094, itemNum = 1},
		{itemID = 2010095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3013005, itemNum = 1},
		{itemID = 1026036, itemNum = 1},
	},
	[1026036] =   ----紫阳门等级20礼包
	{
		{itemID = 2020089, itemNum = 1},
		{itemID = 2020091, itemNum = 1},
		{itemID = 2020092, itemNum = 1},
		{itemID = 2020093, itemNum = 1},
		{itemID = 2020094, itemNum = 1},
		{itemID = 2020095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3021001, itemNum = 1},
		{itemID = 1026037, itemNum = 1},
	},
	[1026037] =   ----紫阳门等级30礼包
	{
		{itemID = 2030089, itemNum = 1},
		{itemID = 2030091, itemNum = 1},
		{itemID = 2030092, itemNum = 1},
		{itemID = 2030093, itemNum = 1},
		{itemID = 2030094, itemNum = 1},
		{itemID = 2030095, itemNum = 1},
		{itemID = 3022001, itemNum = 5},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 1026038, itemNum = 1},
	},
	[1026038] =   ----紫阳门等级40礼包
	{
		{itemID = 2040089, itemNum = 1},
		{itemID = 2040091, itemNum = 1},
		{itemID = 2040092, itemNum = 1},
		{itemID = 2040093, itemNum = 1},
		{itemID = 2040094, itemNum = 1},
		{itemID = 2040095, itemNum = 1},
		{itemID = 3025003, itemNum = 3},
		{itemID = 3025005, itemNum = 3},
		{itemID = 3024006, itemNum = 1},
		{itemID = 1026039, itemNum = 1},
	},
	[1026039] =   ----紫阳门等级50礼包
	{
		{itemID = 2050089, itemNum = 1},
		{itemID = 2050091, itemNum = 1},
		{itemID = 2050092, itemNum = 1},
		{itemID = 3062101, itemNum = 1},
		{itemID = 3024026, itemNum = 2},
		{itemID = 3021013, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 1026040, itemNum = 1},
	},
	[1026040] =   ----紫阳门等级60礼包
	{
		{itemID = 2060089, itemNum = 1},
		{itemID = 2060091, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 3120003, itemNum = 1},
		{itemID = 3120007, itemNum = 1},
		{itemID = 3031006, itemNum = 3},
		{itemID = 3024013, itemNum = 1},
		{itemID = 3024020, itemNum = 1},
	},
	[1026041] =   ----云霄宫等级1礼包
	{
		{itemID = 2001087, itemNum = 1},
		{itemID = 2001091, itemNum = 1},
		{itemID = 2001092, itemNum = 1},
		{itemID = 2001093, itemNum = 1},
		{itemID = 2001094, itemNum = 1},
		{itemID = 2001095, itemNum = 1},
		{itemID = 3011001, itemNum = 20},
		{itemID = 3012001, itemNum = 20},
		{itemID = 3025001, itemNum = 5},
		{itemID = 1026042, itemNum = 1},
	},
	[1026042] =   ----云霄宫等级10礼包
	{
		{itemID = 2010087, itemNum = 1},
		{itemID = 2010091, itemNum = 1},
		{itemID = 2010092, itemNum = 1},
		{itemID = 2010093, itemNum = 1},
		{itemID = 2010094, itemNum = 1},
		{itemID = 2010095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3013005, itemNum = 1},
		{itemID = 1026043, itemNum = 1},
	},
	[1026043] =   ----云霄宫等级20礼包
	{
		{itemID = 2020087, itemNum = 1},
		{itemID = 2020091, itemNum = 1},
		{itemID = 2020092, itemNum = 1},
		{itemID = 2020093, itemNum = 1},
		{itemID = 2020094, itemNum = 1},
		{itemID = 2020095, itemNum = 1},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 3021001, itemNum = 1},
		{itemID = 1026044, itemNum = 1},
	},
	[1026044] =   ----云霄宫等级30礼包
	{
		{itemID = 2030087, itemNum = 1},
		{itemID = 2030091, itemNum = 1},
		{itemID = 2030092, itemNum = 1},
		{itemID = 2030093, itemNum = 1},
		{itemID = 2030094, itemNum = 1},
		{itemID = 2030095, itemNum = 1},
		{itemID = 3022001, itemNum = 5},
		{itemID = 3013003, itemNum = 1},
		{itemID = 3013004, itemNum = 1},
		{itemID = 1026045, itemNum = 1},
	},
	[1026045] =   ----云霄宫等级40礼包
	{
		{itemID = 2040087, itemNum = 1},
		{itemID = 2040091, itemNum = 1},
		{itemID = 2040092, itemNum = 1},
		{itemID = 2040093, itemNum = 1},
		{itemID = 2040094, itemNum = 1},
		{itemID = 2040095, itemNum = 1},
		{itemID = 3025003, itemNum = 3},
		{itemID = 3025005, itemNum = 3},
		{itemID = 3024006, itemNum = 1},
		{itemID = 1026046, itemNum = 1},
	},
	[1026046] =   ----云霄宫等级50礼包
	{
		{itemID = 2050087, itemNum = 1},
		{itemID = 2050091, itemNum = 1},
		{itemID = 2050092, itemNum = 1},
		{itemID = 3062101, itemNum = 1},
		{itemID = 3024026, itemNum = 2},
		{itemID = 3021013, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 1026047, itemNum = 1},
	},
	[1026047] =   ----云霄宫等级60礼包
	{
		{itemID = 2060087, itemNum = 1},
		{itemID = 2060091, itemNum = 1},
		{itemID = 3022002, itemNum = 1},
		{itemID = 3120003, itemNum = 1},
		{itemID = 3120007, itemNum = 1},
		{itemID = 3031006, itemNum = 3},
		{itemID = 3024013, itemNum = 1},
		{itemID = 3024020, itemNum = 1},
	},
}