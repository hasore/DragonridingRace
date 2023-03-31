
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true);

if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "Save your best dragonriding course's times and compete with your friends!";
    L["ADDON_VERSION_OUTDATED"] = "A more recent version of the addon is available!";
    L["ADDON_VERSION"] = "Version:";
    L["ADDON_AUTHOR"] = "Author:";
    L["ADDON_MOTD"] = "Hey, thanks for using "..addonName.."! Type |cffffd700/drr|r to see your personal best times!";
    L["DATE_FORMAT"] = "%m/%d/%y";

    L["FALLBACK_ENABLED"] = "Use of alternative method on event of failure is now enabled.";
    L["FALLBACK_DISABLED"] = "Use of alternative method on event of failure is now disabled.";

    L["UI_PB_TITLE"] = "Your best times"
    L["UI_PB_HEADER_RACE"] = "|cffffd700Race|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700Time (normal)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700Time (advanced)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700Time (reverse)|r"
    
    L["UI_PB_HEADER_GPB_A"] = "|cffffd700Guild best (advanced)|r"
    L["UI_PB_HEADER_GPB_R"] = "|cffffd700Guild best (reverse)|r"
    L["UI_PB_GUILD_INFO"] = "Guild best times only for guildmates with DragonridingRace addon enabled."
    L["GUILD_BEST_TIME_FORMAT"] = function(time, character) return character..": "..time.."s"; end
    L["GUILD_BEST_BEATEN"] = function(time, race, character) return character.." has beaten the guild time on "..race.." in "..time.." seconds!"; end
    L["RACE_FINISHED_GUILD_PB_FORMAT"] = function(race, time) return "Wow, you just beat the best guild time on "..race.." by timing it in "..time.." seconds!"; end

    L["ZONE_WAKING_SHORES"] = "The Waking Shores"
    L["ZONE_OHNAHRAN_PLAINS"] = "Ohn'Ahran Plains"
    L["ZONE_AZURE_SPAN"] = "Azure Span"
    L["ZONE_THALDRASZUS"] = "Thaldraszus"
    L["ZONE_FORBIDDENREACH"] = "The Forbidden Reach"

    L["RACE_66679"] = "Ruby Lifeshrine Loop"
    L["RACE_66692"] = "Ruby Lifeshrine Loop (advanced)"
    L["RACE_72052"] = "Ruby Lifeshrine Loop (reverse)"
    L["RACE_66710"] = "Flashfrost Flyover"
    L["RACE_66712"] = "Flashfrost Flyover (advanced)"
    L["RACE_72700"] = "Flashfrost Flyover (reverse)"
    L["RACE_66721"] = "Wild Preserve Slalom"
    L["RACE_66722"] = "Wild Preserve Slalom (advanced)"
    L["RACE_72705"] = "Wild Preserve Slalom (reverse)"
    L["RACE_66725"] = "Wild Preserve Circuit"
    L["RACE_66726"] = "Wild Preserve Circuit (advanced)"
    L["RACE_72706"] = "Wild Preserve Circuit (reverse)"
    L["RACE_66732"] = "Apex Canopy River Run"
    L["RACE_66733"] = "Apex Canopy River Run (advanced)"
    L["RACE_72734"] = "Apex Canopy River Run (reverse)"
    L["RACE_66727"] = "Emberflow Flight"
    L["RACE_66728"] = "Emberflow Flight (advanced)"
    L["RACE_72707"] = "Emberflow Flight (reverse)"
    L["RACE_66777"] = "Uktulut Coaster"
    L["RACE_66778"] = "Uktulut Coaster (advanced)"
    L["RACE_72739"] = "Uktulut Coaster (reverse)"
    L["RACE_66786"] = "Wingrest Roundabout"
    L["RACE_66787"] = "Wingrest Roundabout (advanced)"
    L["RACE_72740"] = "Wingrest Roundabout (reverse)"

    L["RACE_66835"] = "Sundapple Copse Circuit"
    L["RACE_66836"] = "Sundapple Copse Circuit (advanced)"
    L["RACE_72801"] = "Sundapple Copse Circuit (reverse)"
    L["RACE_66877"] = "Fen Flythrough"
    L["RACE_66878"] = "Fen Flythrough (advanced)"
    L["RACE_72802"] = "Fen Flythrough (reverse)"
    L["RACE_66880"] = "Ravine River Run"
    L["RACE_66881"] = "Ravine River Run (advanced)"
    L["RACE_72803"] = "Ravine River Run (reverse)"
    L["RACE_66885"] = "Emerald Garden Ascent"
    L["RACE_66886"] = "Emerald Garden Ascent (advanced)"
    L["RACE_72805"] = "Emerald Garden Ascent (reverse)"
    L["RACE_66921"] = "Maruukai Dash"
    L["RACE_66933"] = "Mirror of the Sky Dash"
    L["RACE_70710"] = "River Rapids Route"
    L["RACE_70711"] = "River Rapids Route (advanced)"
    L["RACE_72807"] = "River Rapids Route (reverse)"

    L["RACE_66946"] = "The Azure Span Sprint"
    L["RACE_66947"] = "The Azure Span Sprint (advanced)"
    L["RACE_72796"] = "The Azure Span Sprint (reverse)"
    L["RACE_67002"] = "The Azure Span Slalom"
    L["RACE_67003"] = "The Azure Span Slalom (advanced)"
    L["RACE_72799"] = "The Azure Span Slalom (reverse)"
    L["RACE_67031"] = "The Vakthros Ascent"
    L["RACE_67032"] = "The Vakthros Ascent (advanced)"
    L["RACE_72794"] = "The Vakthros Ascent (reverse)"
    L["RACE_67296"] = "Iskaara Tour"
    L["RACE_67297"] = "Iskaara Tour (advanced)"
    L["RACE_72800"] = "Iskaara Tour (reverse)"
    L["RACE_67565"] = "Frostland Flyover"
    L["RACE_67566"] = "Frostland Flyover (advanced)"
    L["RACE_72795"] = "Frostland Flyover (reverse)"
    L["RACE_67741"] = "Archive Ambit"
    L["RACE_67742"] = "Archive Ambit (advanced)"
    L["RACE_72797"] = "Archive Ambit (reverse)"

    L["RACE_67095"] = "The Flowing Forest Flight"
    L["RACE_67096"] = "The Flowing Forest Flight (advanced)"
    L["RACE_72793"] = "The Flowing Forest Flight (reverse)"
    L["RACE_69957"] = "Tyrhold Trial"
    L["RACE_69958"] = "Tyrhold Trial (advanced)"
    L["RACE_72792"] = "Tyrhold Trial (reverse)"
    L["RACE_70051"] = "Cliffside Circuit"
    L["RACE_70052"] = "Cliffside Circuit (advanced)"
    L["RACE_72760"] = "Cliffside Circuit (reverse)"
    L["RACE_70059"] = "Academy Ascent"
    L["RACE_70060"] = "Academy Ascent (advanced)"
    L["RACE_72754"] = "Academy Ascent (reverse)"
    L["RACE_70157"] = "Garden Gallivant"
    L["RACE_70158"] = "Garden Gallivant (advanced)"
    L["RACE_72769"] = "Garden Gallivant (reverse)"
    L["RACE_70161"] = "Caverns Criss-Cross"
    L["RACE_70163"] = "Caverns Criss-Cross (advanced)"
    L["RACE_72750"] = "Caverns Criss-Cross (reverse)"

    L["RACE_73017"] = "Stormsunder Crater Circuit"
    L["RACE_73018"] = "Stormsunder Crater Circuit (advanced)"
    L["RACE_73019"] = "Stormsunder Crater Circuit (reverse)"
    L["RACE_73020"] = "Morqut Ascent"
    L["RACE_73023"] = "Morqut Ascent (advanced)"
    L["RACE_73024"] = "Morqut Ascent (reverse)"
    L["RACE_73025"] = "Aerie Chasm Cruise"
    L["RACE_73027"] = "Aerie Chasm Cruise (advanced)"
    L["RACE_73028"] = "Aerie Chasm Cruise (reverse)"
    L["RACE_73029"] = "Southern Reach Route"
    L["RACE_73030"] = "Southern Reach Route (advanced)"
    L["RACE_73032"] = "Southern Reach Route (reverse)"
    L["RACE_73033"] = "Caldera Coaster"
    L["RACE_73034"] = "Caldera Coaster (advanced)"
    L["RACE_73052"] = "Caldera Coaster (reverse)"
    L["RACE_73061"] = "Forbidden Reach Rush"
    L["RACE_73062"] = "Forbidden Reach Rush (advanced)"
    L["RACE_73064"] = "Forbidden Reach Rush (reverse)"

    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "You finished "..race..", current personal best in this character is "..time.." seconds"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "You finished "..race..", current personal best in this character is "..time.." seconds, local saved best is "..saved.." seconds"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "You finished "..race.." in "..time.." seconds"; end
    L["RACE_FINISHED_PB_FORMAT"] = function(race, time, previousTime) return "Wow, you broke your record on  "..race.." by timing it in "..time.." seconds! That's insane! Your previous best time was "..previousTime.." seconds"; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r in |cffffd700"..time.."|r seconds"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.."s"; end

    -- Chat lookup
    L["NPC_NAMES"] = {"Bronze Timekeeper", "Bronze Timekeeper Assistant"};
end