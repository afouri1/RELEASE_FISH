
--[[
 	游戏ID \ 资源配置
]]

local GameManifest = {}
GameManifest.useAutoUpversion = true    -- 打包后自动升级版本号

GameManifest.GameIds = {   -- 小于10000 的是子游戏, 大于10000的是基础资源, 大厅认为是一个子游戏
    BaseCommon 	= 10001,
    cocos		= 10002 , 
    framework 	= 10003 ,
    
    GUpdate 	= 1001 ,
    GLobby 		= 1000 ,
    Dntg 		= 101  ,
}

local ids = GameManifest.GameIds
GameManifest.gameConfig = {
	
	[ids.cocos] 		= { folder="cocos", 	name="cocos框架" , 	version="1.1.399" , id=ids.cocos  ,   depends={   } },
	[ids.framework] 	= { folder="framework", name="quick框架" , 	version="1.1.399" , id=ids.framework ,depends={   } },
	[ids.BaseCommon] 	= { folder="BaseCommon",name="大厅基础" , 	version="1.1.399" , id=ids.BaseCommon,depends={ ids.cocos, ids.framework } },

	[ids.GUpdate] 		= { folder="GUpdate", 	name="更新模块" , 	version="1.1.399" , id=ids.GUpdate  , depends={ ids.BaseCommon } },
	[ids.GLobby] 		= { folder="GLobby", 	name="大厅" , 		version="1.1.399" , id=ids.GLobby  ,	depends={ ids.BaseCommon, ids.GUpdate } 
,newDetails=
[[
版本更新内容：
1.公告图片替换
]]
},

	[ids.Dntg]  		= { folder="GDntg", 	name="大闹天宫" , 	version="1.1.399" , id=ids.Dntg  ,	depends={  }
,newDetails=
[[
版本更新内容：
1.公告图片替换
]]
},



}


return GameManifest


