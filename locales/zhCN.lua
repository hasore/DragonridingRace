
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhCN", false);

if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "保存你最佳的驭龙竞速成绩，并和你的朋友竞争！";
    L["ADDON_VERSION_OUTDATED"] = "该插件的最新版本可用！";
    L["ADDON_VERSION"] = "版本:";
    L["ADDON_AUTHOR"] = "作者:";
    L["ADDON_MOTD"] = "感谢使用|cFFff638a"..addonName.."！|r\n你可以输入 |cffffd700/drr|r 来查看你的驭龙竞速计时板！";
    L["DATE_FORMAT"] = "%y/%m/%d";

    L["FALLBACK_ENABLED"] = "Use of alternative method on event of failure is now enabled.";
    L["FALLBACK_DISABLED"] = "Use of alternative method on event of failure is now disabled.";

    L["UI_PB_TITLE"] = "你的最佳时间"
    L["UI_PB_HEADER_RACE"] = "|cffffd700赛道|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700时间 (普通)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700时间 (进阶)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700时间 (反向)|r"

    L["ZONE_WAKING_SHORES"] = "觉醒海岸"
    L["ZONE_OHNAHRAN_PLAINS"] = "欧恩哈拉平原"
    L["ZONE_AZURE_SPAN"] = "碧蓝林海"
    L["ZONE_THALDRASZUS"] = "索德拉苏斯"

    L["RACE_66679"] = "红玉新生圣地赛道"
    L["RACE_66692"] = "红玉新生圣地赛道 (进阶)"
    L["RACE_72052"] = "红玉新生圣地赛道 (反向)"
    L["RACE_66710"] = "闪霜飞越"
    L["RACE_66712"] = "闪霜飞越 (进阶)"
    L["RACE_72700"] = "闪霜飞越 (反向)"
    L["RACE_66721"] = "狂野禁猎区障碍赛"
    L["RACE_66722"] = "狂野禁猎区障碍赛 (进阶)"
    L["RACE_72705"] = "狂野禁猎区障碍赛 (反向)"
    L["RACE_66725"] = "狂野禁猎区巡回赛"
    L["RACE_66726"] = "狂野禁猎区巡回赛 (进阶)"
    L["RACE_72706"] = "狂野禁猎区巡回赛 (反向)"
    L["RACE_66732"] = "绝顶树冠激流冲刺"
    L["RACE_66733"] = "绝顶树冠激流冲刺 (进阶)"
    L["RACE_72734"] = "绝顶树冠激流冲刺 (反向)"
    L["RACE_66727"] = "烬琉航线"
    L["RACE_66728"] = "烬琉航线 (进阶)"
    L["RACE_72707"] = "烬琉航线 (反向)"
    L["RACE_66777"] = "乌克图鲁特急流"
    L["RACE_66778"] = "乌克图鲁特急流 (进阶)"
    L["RACE_72739"] = "乌克图鲁特急流 (反向)"
    L["RACE_66786"] = "翼眠环线"
    L["RACE_66787"] = "翼眠环线 (进阶)"
    L["RACE_72740"] = "翼眠环线 (反向)"

    L["RACE_66835"] = "阳斑灌木林巡回赛"
    L["RACE_66836"] = "阳斑灌木林巡回赛t (进阶)"
    L["RACE_72801"] = "阳斑灌木林巡回赛t (反向)"
    L["RACE_66877"] = "泽地漫游"
    L["RACE_66878"] = "泽地漫游 (进阶)"
    L["RACE_72802"] = "泽地漫游 (反向)"
    L["RACE_66880"] = "河谷奔行"
    L["RACE_66881"] = "河谷奔行 (进阶)"
    L["RACE_72803"] = "河谷奔行 (反向)"
    L["RACE_66885"] = "翡翠花园攀升赛"
    L["RACE_66886"] = "翡翠花园攀升赛 (进阶)"
    L["RACE_72805"] = "翡翠花园攀升赛 (反向)"
    L["RACE_66921"] = "马鲁凯飞驰"
    L["RACE_66933"] = "镜天湖飞驰"
    L["RACE_70710"] = "湍流环线"
    L["RACE_70711"] = "湍流环线 (进阶)"
    L["RACE_72807"] = "湍流环线 (反向)"

    L["RACE_66946"] = "碧蓝林海冲刺"
    L["RACE_66947"] = "碧蓝林海冲刺 (进阶)"
    L["RACE_72796"] = "碧蓝林海冲刺 (反向)"
    L["RACE_67002"] = "碧蓝林海障碍赛"
    L["RACE_67003"] = "碧蓝林海障碍赛 (进阶)"
    L["RACE_72799"] = "碧蓝林海障碍赛 (反向)"
    L["RACE_67031"] = "瓦克索斯攀升赛"
    L["RACE_67032"] = "瓦克索斯攀升赛 (进阶)"
    L["RACE_72794"] = "瓦克索斯攀升赛 (反向)"
    L["RACE_67296"] = "伊斯卡拉锦标赛"
    L["RACE_67297"] = "伊斯卡拉锦标赛 (进阶)"
    L["RACE_72800"] = "伊斯卡拉锦标赛 (反向)"
    L["RACE_67565"] = "霜土飞越"
    L["RACE_67566"] = "霜土飞越 (进阶)"
    L["RACE_72795"] = "霜土飞越 (反向)"
    L["RACE_67741"] = "档案限界"
    L["RACE_67742"] = "档案限界 (进阶)"
    L["RACE_72797"] = "档案限界 (反向)"

    L["RACE_67095"] = "起伏森林航线"
    L["RACE_67096"] = "起伏森林航线 (进阶)"
    L["RACE_72793"] = "起伏森林航线 (反向)"
    L["RACE_69957"] = "提尔要塞试炼"
    L["RACE_69958"] = "提尔要塞试炼 (进阶)"
    L["RACE_72792"] = "提尔要塞试炼 (反向)"
    L["RACE_70051"] = "山崖环道"
    L["RACE_70052"] = "山崖环道 (进阶)"
    L["RACE_72760"] = "山崖环道 (反向)"
    L["RACE_70059"] = "学院爬升赛"
    L["RACE_70060"] = "学院爬升赛 (进阶)"
    L["RACE_72754"] = "学院爬升赛 (反向)"
    L["RACE_70157"] = "花园休闲赛"
    L["RACE_70158"] = "花园休闲赛 (进阶)"
    L["RACE_72769"] = "花园休闲赛 (反向)"
    L["RACE_70161"] = "交错洞窟"
    L["RACE_70163"] = "交错洞窟 (进阶)"
    L["RACE_72750"] = "交错洞窟 (反向)"

    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time) return "You finished "..race..", current personal best is "..time.." seconds"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "你完成 "..race.." 用时 "..time.." 秒"; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r in |cffffd700"..time.."|r 秒"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.." 秒"; end

    -- Chat lookup
    L["NPC_NAMES"] = {"青铜时光守护者"};
end