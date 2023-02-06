
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "frFR", false);

if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "Enregistre tes meilleurs temps et entre en compétition avec tes amis !";
    L["ADDON_VERSION_OUTDATED"] = "Une version plus récente de l'addon est disponible !";
    L["ADDON_VERSION"] = "Version :";
    L["ADDON_AUTHOR"] = "Auteur :";
    L["ADDON_MOTD"] = "Hey, merci d'utiliser "..addonName.."! Entre |cffffd700/drr|r pour voir tes meilleurs temps !";
    L["DATE_FORMAT"] = "%d/%m/%y";

    L["FALLBACK_ENABLED"] = "Use of alternative method on event of failure is now enabled.";
    L["FALLBACK_DISABLED"] = "Use of alternative method on event of failure is now disabled.";

    L["UI_PB_TITLE"] = "Tes Meilleurs Temps"
    L["UI_PB_HEADER_RACE"] = "|cffffd700Course|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700Temps (normal)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700Temps (avancé)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700Temps (inversés)|r"

    L["UI_PB_HEADER_GPB_A"] = "|cffffd700Temps guilde (avancé)|r"
    L["UI_PB_HEADER_GPB_R"] = "|cffffd700Temps guilde (inversés)|r"
    L["UI_PB_GUILD_INFO"] = "Seuls les temps des membres de guilde ayant l'addon DragonridingRace sont affichés."
    L["GUILD_BEST_TIME_FORMAT"] = function(time, character) return character..": "..time.."s"; end
    L["GUILD_BEST_BEATEN"] = function(time, race, character) return character.." a battu le meilleur temps de la guilde sur "..race.." en "..time.." secondes !"; end
    L["RACE_FINISHED_GUILD_PB_FORMAT"] = function(race, time) return "Wouhou, vous venez de battre le meilleur temps de la guilde sur "..race.." avec un chrono de "..time.." secondes !"; end

    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "You finished "..race..", current personal best in this character is "..time.." seconds"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "You finished "..race..", current personal best in this character is "..time.." seconds, local saved best is "..saved.." seconds"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "Vous avez terminé la course "..race.." en "..time.." secondes"; end
    L["RACE_FINISHED_PB_FORMAT"] = function(race, time, previousTime) return "Waah, vous avez battu votre record sur  "..race.." en faisant un temps de "..time.." secondes ! Bien joué ! Ton meilleur temps précédent était "..previousTime.." secondes."; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r en |cffffd700"..time.."|r secondes"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.."s"; end

    -- Chat lookup
    L["NPC_NAMES"] = {"Chronométreur de bronze", "Chronométreuse de bronze", "Assistant chronométreur de bronze"};

    L["ZONE_WAKING_SHORES"] = "Rivages de l'Eveil"
    L["ZONE_OHNAHRAN_PLAINS"] = "Plaines d'Ohn'Ahra"
    L["ZONE_AZURE_SPAN"] = "Travée d'Azur"
    L["ZONE_THALDRASZUS"] = "Thaldraszus"

    L["RACE_66679"] = "Boucle du sanctuaire de l’Essence"
    L["RACE_66692"] = "Boucle du sanctuaire de l’Essence (avancé)"
    L["RACE_72052"] = "Boucle du sanctuaire de l’Essence (inversés)"
    L["RACE_66710"] = "Survol de givréclair"
    L["RACE_66712"] = "Survol de givréclair (avancé)"
    L["RACE_72700"] = "Survol de givréclair (inversés)"
    L["RACE_66721"] = "Slalom du domaine Sauvage"
    L["RACE_66722"] = "Slalom du domaine Sauvage (avancé)"
    L["RACE_72705"] = "Slalom du domaine Sauvage (inversés)"
    L["RACE_66725"] = "Circuit du domaine Sauvage"
    L["RACE_66726"] = "Circuit du domaine Sauvage (avancé)"
    L["RACE_72706"] = "Circuit du domaine Sauvage (inversés)"
    L["RACE_66732"] = "Descente de rapides de la canopée de l'Apogée"
    L["RACE_66733"] = "Descente de rapides de la canopée de l'Apogée (avancé)"
    L["RACE_72734"] = "Descente de rapides de la canopée de l'Apogée (inversés)"
    L["RACE_66727"] = "Vol de Ruisse-Braise"
    L["RACE_66728"] = "Vol de Ruisse-Braise (avancé)"
    L["RACE_72707"] = "Vol de Ruisse-Braise (inversés)"
    L["RACE_66777"] = "Circuit d’Uktulut"
    L["RACE_66778"] = "Circuit d’Uktulut (avancé)"
    L["RACE_72739"] = "Circuit d’Uktulut (inversés)"
    L["RACE_66786"] = "Tour de Trêve-Ailée"
    L["RACE_66787"] = "Tour de Trêve-Ailée (avancé)"
    L["RACE_72740"] = "Tour de Trêve-Ailée (inversés)"

    L["RACE_66835"] = "Parcours du taillis Soltavel"
    L["RACE_66836"] = "Parcours du taillis Soltavel (avancé)"
    L["RACE_72801"] = "Parcours du taillis Soltavel (inversés)"
    L["RACE_66877"] = "Traversée des marais"
    L["RACE_66878"] = "Traversée des marais (avancé)"
    L["RACE_72802"] = "Traversée des marais (inversés)"
    L["RACE_66880"] = "Descente des gorges"
    L["RACE_66881"] = "Descente des gorges (avancé)"
    L["RACE_72803"] = "Descente des gorges (inversés)"
    L["RACE_66885"] = "Ascension des jardins d'Emeraude"
    L["RACE_66886"] = "Ascension des jardins d'Emeraude (avancé)"
    L["RACE_72805"] = "Ascension des jardins d'Emeraude (inversés)"
    L["RACE_66921"] = "Marathon de Maruukaï"
    L["RACE_66933"] = "Marathon du miroir céleste"
    L["RACE_70710"] = "Descente des rapides"
    L["RACE_70711"] = "Descente des rapides (avancé)"
    L["RACE_72807"] = "Descente des rapides (inversés)"

    L["RACE_66946"] = "Sprint de la travée d'Azur"
    L["RACE_66947"] = "Sprint de la travée d'Azur (avancé)"
    L["RACE_72796"] = "Sprint de la travée d'Azur (inversés)"
    L["RACE_67002"] = "Slalom de la travée d'Azur"
    L["RACE_67003"] = "Slalom de la travée d'Azur (avancé)"
    L["RACE_72799"] = "Slalom de la travée d'Azur (inversés)"
    L["RACE_67031"] = "Ascension du Vakthros"
    L["RACE_67032"] = "Ascension du Vakthros (avancé)"
    L["RACE_72794"] = "Ascension du Vakthros (inversés)"
    L["RACE_67296"] = "Tour d'Iskaara"
    L["RACE_67297"] = "Tour d'Iskaara (avancé)"
    L["RACE_72800"] = "Tour d'Iskaara (inversés)"
    L["RACE_67565"] = "Survol glaciaire"
    L["RACE_67566"] = "Survol glaciaire (avancé)"
    L["RACE_72795"] = "Survol glaciaire (inversés)"
    L["RACE_67741"] = "Domaine des Archives"
    L["RACE_67742"] = "Domaine des Archives (avancé)"
    L["RACE_72797"] = "Domaine des Archives (inversés)"

    L["RACE_67095"] = "Vol de la forêt Ondoyante"
    L["RACE_67096"] = "Vol de la forêt Ondoyante (avancé)"
    L["RACE_72793"] = "Vol de la forêt Ondoyante (inversés)"
    L["RACE_69957"] = "Epreuve du bastion de Tyr"
    L["RACE_69958"] = "Epreuve du bastion de Tyr (avancé)"
    L["RACE_72792"] = "Epreuve du bastion de Tyr (inversés)"
    L["RACE_70051"] = "Circuit des falaises"
    L["RACE_70052"] = "Circuit des falaises (avancé)"
    L["RACE_72760"] = "Circuit des falaises (inversés)"
    L["RACE_70059"] = "Ascension de l'académie"
    L["RACE_70060"] = "Ascension de l'académie (avancé)"
    L["RACE_72754"] = "Ascension de l'académie (inversés)"
    L["RACE_70157"] = "Promenade des jardins"
    L["RACE_70158"] = "Promenade des jardins (avancé)"
    L["RACE_72769"] = "Promenade des jardins (inversés)"
    L["RACE_70161"] = "Réseau des grottes"
    L["RACE_70163"] = "Réseau des grottes (avancé)"
    L["RACE_72750"] = "Réseau des grottes (inversés)"
end