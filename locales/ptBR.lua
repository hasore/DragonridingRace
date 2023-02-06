 
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "ptBR", false);
 
if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "Registre seus melhores tempos nas corridas de dragonaria e compita com seus amigos!";
    L["ADDON_VERSION_OUTDATED"] = "Uma versão mais recente do addon está disponível!";
    L["ADDON_VERSION"] = "Versão:";
    L["ADDON_AUTHOR"] = "Autor:";
    L["ADDON_MOTD"] = "Oi, obrigado por usar "..addonName.."! Digite |cffffd700/drr|r para ver seus melhores tempos!";
    L["DATE_FORMAT"] = "%d/%m/%y";
 
    L["FALLBACK_ENABLED"] = "Chamada de metodo alternativo em caso de falha foi ativada.";
    L["FALLBACK_DISABLED"] = "Chamada de metodo alternativo em caso de falha foi desativada.";

    L["UI_PB_TITLE"] = "Seus melhores tempos"
    L["UI_PB_HEADER_RACE"] = "|cffffd700Circuito|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700Tempo (normal)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700Tempo (avançado)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700Tempo (reverso)|r"
 
    L["UI_PB_HEADER_GPB_A"] = "|cffffd700Melhor da guilda (avançado)|r"
    L["UI_PB_HEADER_GPB_R"] = "|cffffd700Melhor da guilda (avançado)|r"
    L["UI_PB_GUILD_INFO"] = "Melhores tempos da guilda apenas para membros com o addon DragonridingRace ativado."
    L["GUILD_BEST_TIME_FORMAT"] = function(time, character) return character..": "..time.."s"; end
    L["GUILD_BEST_BEATEN"] = function(time, race, character) return character.." superou o tempo da guilda em "..race.." por "..time.." segundos!"; end
    L["RACE_FINISHED_GUILD_PB_FORMAT"] = function(race, time) return "Você superou o melhor tempo da guilda em  "..race.." completando em "..time.." segundos!"; end
 
    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "Você terminou "..race..", o seu recorde atual neste personagem é de "..time.." segundos"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "Você terminou "..race..", o seu recorde atual neste personagem é de "..time.." segundos, recorde salvo localmente de "..saved.." segundos"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "Você terminou "..race.." em "..time.." segundos"; end
    L["RACE_FINISHED_PB_FORMAT"] = function(race, time, previousTime) return "Wow, você quebrou seu recorde em  "..race.." terminando em "..time.." segundos! Seu recorde anterior era "..previousTime.." segundos"; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r in |cffffd700"..time.."|r seconds"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.."s"; end
 
    -- Chat lookup
    L["NPC_NAMES"] = {"Guarda-tempo Bronze", "Guarda-tempo Bronze Assistant"};
 
    L["ZONE_WAKING_SHORES"] = "Costa Desperta"
    L["ZONE_OHNAHRAN_PLAINS"] = "Chapada Ohn'ahrana"
    L["ZONE_AZURE_SPAN"] = "Vasta Lazúli"
    L["ZONE_THALDRASZUS"] = "Thaldraszus"
 
    L["RACE_66679"] = "Circuito do Santuário da Vida Rubi"
    L["RACE_66692"] = "Circuito do Santuário da Vida Rubi (avançado)"
    L["RACE_72052"] = "Circuito do Santuário da Vida Rubi (reverso)"
    L["RACE_66710"] = "Sobrevoo do Gelo Súbito"
    L["RACE_66712"] = "Sobrevoo do Gelo Súbito (avançado)"
    L["RACE_72700"] = "Sobrevoo do Gelo Súbito (reverso)"
    L["RACE_66721"] = "Slalom da Reserva Selvagem"
    L["RACE_66722"] = "Slalom da Reserva Selvagem (avançado)"
    L["RACE_72705"] = "Slalom da Reserva Selvagem (reverso)"
    L["RACE_66725"] = "Circuito da Reserva Selvagem"
    L["RACE_66726"] = "Circuito da Reserva Selvagem (avançado)"
    L["RACE_72706"] = "Circuito da Reserva Selvagem (reverso)"
    L["RACE_66732"] = "Disputa do Rio do Dossel do Ápice"
    L["RACE_66733"] = "Disputa do Rio do Dossel do Ápice (avançado)"
    L["RACE_72734"] = "Disputa do Rio do Dossel do Ápice (reverso)"
    L["RACE_66727"] = "Voo de Fluibrasa"
    L["RACE_66728"] = "Voo de Fluibrasa (avançado)"
    L["RACE_72707"] = "Voo de Fluibrasa (reverso)"
    L["RACE_66777"] = "Montanha-russa de Uktulut"
    L["RACE_66778"] = "Montanha-russa de Uktulut (avançado)"
    L["RACE_72739"] = "Montanha-russa de Uktulut (reverso)"
    L["RACE_66786"] = "Rotatória Pouso das Asas"
    L["RACE_66787"] = "Rotatória Pouso das Asas (avançado)"
    L["RACE_72740"] = "Rotatória Pouso das Asas (reverso)"
 
    L["RACE_66835"] = "Circuito do Arvoredo Verdelume"
    L["RACE_66836"] = "Circuito do Arvoredo Verdelume (avançado)"
    L["RACE_72801"] = "Circuito do Arvoredo Verdelume (reverso)"
    L["RACE_66877"] = "Travessia do Charco"
    L["RACE_66878"] = "Travessia do Charco (avançado)"
    L["RACE_72802"] = "Travessia do Charco (reverso)"
    L["RACE_66880"] = "Disputa do Rio da Ravina"
    L["RACE_66881"] = "Disputa do Rio da Ravina (avançado)"
    L["RACE_72803"] = "Disputa do Rio da Ravina (reverso)"
    L["RACE_66885"] = "Encosta dos Jardins Esmeraldinos"
    L["RACE_66886"] = "Encosta dos Jardins Esmeraldinos (avançado)"
    L["RACE_72805"] = "Encosta dos Jardins Esmeraldinos (reverso)"
    L["RACE_66921"] = "Arremetida de Maruukai"
    L["RACE_66933"] = "Arremetida do Espelho do Céu"
    L["RACE_70710"] = "Percurso das Corredeiras"
    L["RACE_70711"] = "Percurso das Corredeiras (avançado)"
    L["RACE_72807"] = "Percurso das Corredeiras (reverso)"
 
    L["RACE_66946"] = "Disparada de Vasta Lazúli"
    L["RACE_66947"] = "Disparada de Vasta Lazúli (avançado)"
    L["RACE_72796"] = "Disparada de Vasta Lazúli (reverso)"
    L["RACE_67002"] = "Slalom de Vasta Lazúli"
    L["RACE_67003"] = "Slalom de Vasta Lazúli (avançado)"
    L["RACE_72799"] = "Slalom de Vasta Lazúli (reverso)"
    L["RACE_67031"] = "Encosta de Vakthros"
    L["RACE_67032"] = "Encosta de Vakthros (avançado)"
    L["RACE_72794"] = "Encosta de Vakthros (reverso)"
    L["RACE_67296"] = "Rota de Iskaara"
    L["RACE_67297"] = "Rota de Iskaara (avançado)"
    L["RACE_72800"] = "Rota de Iskaara (reverso)"
    L["RACE_67565"] = "Sobrevoo das Terras Gélidas"
    L["RACE_67566"] = "Sobrevoo das Terras Gélidas (avançado)"
    L["RACE_72795"] = "Sobrevoo das Terras Gélidas (reverso)"
    L["RACE_67741"] = "Âmbito do Arquivo"
    L["RACE_67742"] = "Âmbito do Arquivo (avançado)"
    L["RACE_72797"] = "Âmbito do Arquivo (reverso)"
 
    L["RACE_67095"] = "Revoada da Floresta Fluente"
    L["RACE_67096"] = "Revoada da Floresta Fluente (avançado)"
    L["RACE_72793"] = "Revoada da Floresta Fluente (reverso)"
    L["RACE_69957"] = "Prova do Baluarte de Tyr"
    L["RACE_69958"] = "Prova do Baluarte de Tyr (avançado)"
    L["RACE_72792"] = "Prova do Baluarte de Tyr (reverso)"
    L["RACE_70051"] = "Circuito do Penhasco"
    L["RACE_70052"] = "Circuito do Penhasco (avançado)"
    L["RACE_72760"] = "Circuito do Penhasco (reverso)"
    L["RACE_70059"] = "Ascensão da Academia"
    L["RACE_70060"] = "Ascensão da Academia (avançado)"
    L["RACE_72754"] = "Ascensão da Academia (reverso)"
    L["RACE_70157"] = "Jardim Gallivant"
    L["RACE_70158"] = "Jardim Gallivant (avançado)"
    L["RACE_72769"] = "Jardim Gallivant (reverso)"
    L["RACE_70161"] = "Zigue-zague de Cavernas"
    L["RACE_70163"] = "Zigue-zague de Cavernas (avançado)"
    L["RACE_72750"] = "Zigue-zague de Cavernas (reverso)"
 
end