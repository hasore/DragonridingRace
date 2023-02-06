
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "deDE", false);

if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "Speicher deine Bestzeiten bei den Drachenrennen und mess dich mit deinen Freunden!";
    L["ADDON_VERSION_OUTDATED"] = "Eine neuere Version des Addons ist verfügbar!";
    L["ADDON_VERSION"] = "Version:";
    L["ADDON_AUTHOR"] = "Urheber:";
    L["ADDON_MOTD"] = "Hey, danke das du "..addonName.." benutzt! Tippe |cffffd700/drr|r um deine persönlichen Bestzeiten zu sehen!";
    L["DATE_FORMAT"] = "%d.%m.%y";

    L["FALLBACK_ENABLED"] = "Use of alternative method on event of failure is now enabled.";
    L["FALLBACK_DISABLED"] = "Use of alternative method on event of failure is now disabled.";

    L["UI_PB_TITLE"] = "Deine persönlichen Bestzeiten"
    L["UI_PB_HEADER_RACE"] = "|cffffd700Rennen|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700Bestzeit (normal)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700Bestzeit (fortgeschritten)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700Bestzeit (umgekehrt)|r"

    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "You finished "..race..", current personal best in this character is "..time.." seconds"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "You finished "..race..", current personal best in this character is "..time.." seconds, local saved best is "..saved.." seconds"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "Du hast "..race.." in "..time.." Sekunden beendet"; end
    L["RACE_FINISHED_PB_FORMAT"] = function(race, time, previousTime) return "Wow, du hast deinen  "..race.." gebrochen, indem du ihn in "..time.." Sekunden gemessen hast! Es ist verrückt! Ihre bisherige Bestzeit war "..previousTime.." Sekunden."; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r in |cffffd700"..time.."|r Sekunden"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.." Sekunden"; end

    L["UI_PB_HEADER_GPB_A"] = "|cffffd700Beste Gildenzeit (fortgeschritten)|r"
    L["UI_PB_HEADER_GPB_R"] = "|cffffd700Beste Gildenzeit (umgekehrt)|r"
    L["UI_PB_GUILD_INFO"] = "Bestzeiten der Gilde nur für Gildenmitglieder mit aktiviertem DragonridingRace Addon."
    L["GUILD_BEST_TIME_FORMAT"] = function(time, character) return character..": "..time.."s"; end
    L["GUILD_BEST_BEATEN"] = function(time, race, character) return character.." hat die Gildenzeit auf "..race.." in "..time.." Sekunden geschlagen!"; end
    L["RACE_FINISHED_GUILD_PB_FORMAT"] = function(race, time) return "Wow, du hast gerade die beste Gildenzeit auf "..race.." geschlagen, indem du sie in "..time.." Sekunden gemessen hast!"; end

    -- Chat lookup
    L["NPC_NAMES"] = {"Bronzezeithüterin", "Bronzezeithüter", "Bronzezeithüterassistant"};

    L["ZONE_WAKING_SHORES"] = "Küste des Erwachesn"
    L["ZONE_OHNAHRAN_PLAINS"] = "Ebenen von Ohn'Ahra"
    L["ZONE_AZURE_SPAN"] = "Azurblaues Gebirge"
    L["ZONE_THALDRASZUS"] = "Thaldraszus"

    L["RACE_66679"] = "Rubinlebensschrein-Schleife"
    L["RACE_66692"] = "Rubinlebensschrein-Schleife (fortgeschritten)"
    L["RACE_72052"] = "Rubinlebensschrein-Schleife (umgekehrt)"
    L["RACE_66710"] = "Blitzfrost-Überflug"
    L["RACE_66712"] = "Blitzfrost-Überflug (fortgeschritten)"
    L["RACE_72700"] = "Blitzfrost-Überflug (umgekehrt)"
    L["RACE_66721"] = "Wildreservat-Slalom"
    L["RACE_66722"] = "Wildreservat-Slalom (fortgeschritten)"
    L["RACE_72705"] = "Wildreservat-Slalom (umgekehrt)"
    L["RACE_66725"] = "Wildreservat-Parcours"
    L["RACE_66726"] = "Wildreservat-Parcours (fortgeschritten)"
    L["RACE_72706"] = "Wildreservat-Parcours (umgekehrt)"
    L["RACE_66732"] = "Flusslauf des Hohen Blätterdachs"
    L["RACE_66733"] = "Flusslauf des Hohen Blätterdachs (fortgeschritten)"
    L["RACE_72734"] = "Flusslauf des Hohen Blätterdachs (umgekehrt)"
    L["RACE_66727"] = "Glutstrom-Flug"
    L["RACE_66728"] = "Glutstrom-Flug (fortgeschritten)"
    L["RACE_72707"] = "Glutstrom-Flug (umgekehrt)"
    L["RACE_66777"] = "Uktuluter Küstenachter"
    L["RACE_66778"] = "Uktuluter Küstenachter (fortgeschritten)"
    L["RACE_72739"] = "Uktuluter Küstenachter (umgekehrt)"
    L["RACE_66786"] = "Schwingenrastkreisel"
    L["RACE_66787"] = "Schwingenrastkreisel (fortgeschritten)"
    L["RACE_72740"] = "Schwingenrastkreisel (umgekehrt)"

    L["RACE_66835"] = "Sundapple Copse Circuit"
    L["RACE_66836"] = "Sundapple Copse Circuit (fortgeschritten)"
    L["RACE_72801"] = "Sundapple Copse Circuit (umgekehrt)"
    L["RACE_66877"] = "Fen Flythrough"
    L["RACE_66878"] = "Fen Flythrough (fortgeschritten)"
    L["RACE_72802"] = "Fen Flythrough (umgekehrt)"
    L["RACE_66880"] = "Ravine River Run"
    L["RACE_66881"] = "Ravine River Run (fortgeschritten)"
    L["RACE_72803"] = "Ravine River Run (umgekehrt)"
    L["RACE_66885"] = "Emerald Garden Ascent"
    L["RACE_66886"] = "Emerald Garden Ascent (fortgeschritten)"
    L["RACE_72805"] = "Emerald Garden Ascent (umgekehrt)"
    L["RACE_66921"] = "Maruukai Dash"
    L["RACE_66933"] = "Mirror of the Sky Dash"
    L["RACE_70710"] = "River Rapids Route"
    L["RACE_70711"] = "River Rapids Route (fortgeschritten)"
    L["RACE_72807"] = "River Rapids Route (umgekehrt)"

    L["RACE_66946"] = "The Azure Span Sprint"
    L["RACE_66947"] = "The Azure Span Sprint (fortgeschritten)"
    L["RACE_72796"] = "The Azure Span Sprint (umgekehrt)"
    L["RACE_67002"] = "The Azure Span Slalom"
    L["RACE_67003"] = "The Azure Span Slalom (fortgeschritten)"
    L["RACE_72799"] = "The Azure Span Slalom (umgekehrt)"
    L["RACE_67031"] = "The Vakthros Ascent"
    L["RACE_67032"] = "The Vakthros Ascent (fortgeschritten)"
    L["RACE_72794"] = "The Vakthros Ascent (umgekehrt)"
    L["RACE_67296"] = "Iskaara Tour"
    L["RACE_67297"] = "Iskaara Tour (fortgeschritten)"
    L["RACE_72800"] = "Iskaara Tour (umgekehrt)"
    L["RACE_67565"] = "Flashfrost Flyover"
    L["RACE_67566"] = "Flashfrost Flyover (fortgeschritten)"
    L["RACE_72795"] = "Flashfrost Flyover (umgekehrt)"
    L["RACE_67741"] = "Archive Ambit"
    L["RACE_67742"] = "Archive Ambit (fortgeschritten)"
    L["RACE_72797"] = "Archive Ambit (umgekehrt)"

    L["RACE_67095"] = "The Flowing Forest Flight"
    L["RACE_67096"] = "The Flowing Forest Flight (fortgeschritten)"
    L["RACE_72793"] = "The Flowing Forest Flight (umgekehrt)"
    L["RACE_69957"] = "Tyrhold Trial"
    L["RACE_69958"] = "Tyrhold Trial (fortgeschritten)"
    L["RACE_72792"] = "Tyrhold Trial (umgekehrt)"
    L["RACE_70051"] = "Cliffside Circuit"
    L["RACE_70052"] = "Cliffside Circuit (fortgeschritten)"
    L["RACE_72760"] = "Cliffside Circuit (umgekehrt)"
    L["RACE_70059"] = "Academy Ascent"
    L["RACE_70060"] = "Academy Ascent (fortgeschritten)"
    L["RACE_72754"] = "Academy Ascent (umgekehrt)"
    L["RACE_70157"] = "Garden Gallivant"
    L["RACE_70158"] = "Garden Gallivant (fortgeschritten)"
    L["RACE_72769"] = "Garden Gallivant (umgekehrt)"
    L["RACE_70161"] = "Caverns Criss-Cross"
    L["RACE_70163"] = "Caverns Criss-Cross (fortgeschritten)"
    L["RACE_72750"] = "Caverns Criss-Cross (umgekehrt)"
end