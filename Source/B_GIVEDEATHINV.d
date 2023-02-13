func void B_GIVEDEATHINV(var C_NPC SLF) {
    var int FROG_RANDOMIZER;
    if ((SLF.AIVAR[11]) == (TRUE)) {
        return;
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[14]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_SCAVENGER)) {
            CREATEINVITEMS(SLF, 35309, 1);
        };
        if (((SLF.AIVAR[43]) == (ID_BLACKRAT)) || ((SLF.AIVAR[43]) == (ID_GIANT_RAT))) {
            CREATEINVITEMS(SLF, 35306, 1);
        };
        if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) || ((SLF.AIVAR[43]) == (ID_GOBBO_BLACK))) {
            CREATEINVITEMS(SLF, 35307, 1);
        };
        if ((((SLF.AIVAR[43]) == (ID_GIANT_BUG)) || ((SLF.AIVAR[43]) == (ID_FORESTBUG))) || ((SLF.AIVAR[43]) == (ID_GIANTBUG_CURSED))) {
            CREATEINVITEMS(SLF, 35308, 1);
        };
        if (((((SLF.AIVAR[43]) == (ID_MOLERAT)) || ((SLF.AIVAR[43]) == (ID_YMOLERAT))) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_MOLERAT))) || ((SLF.AIVAR[43]) == (ID_SWAMPRAT))) {
            CREATEINVITEMS(SLF, 35313, 1);
        };
        if ((((SLF.AIVAR[43]) == (ID_KEILER)) || ((SLF.AIVAR[43]) == (ID_YKEILER))) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_KEILER))) {
            CREATEINVITEMS(SLF, 35312, 1);
        };
        if ((((SLF.AIVAR[43]) == (ID_LURKER)) || ((SLF.AIVAR[43]) == (ID_OLDLURKER))) || ((SLF.AIVAR[43]) == (ID_SEALURKER))) {
            CREATEINVITEMS(SLF, 35311, 1);
        };
        if (((((SLF.AIVAR[43]) == (ID_BLOODFLY)) || ((SLF.AIVAR[43]) == (ID_BLOODFLY_RIVER))) || ((SLF.AIVAR[43]) == (ID_BLOODFLY_RUNE))) || ((SLF.AIVAR[43]) == (ID_SWAMPDRONE))) {
            CREATEINVITEMS(SLF, 35310, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[15]) == (TRUE)) {
        if (((SLF.AIVAR[43]) == (ID_MOLERAT)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_MOLERAT))) {
            CREATEINVITEMS(SLF, 35354, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPRAT)) {
            CREATEINVITEMS(SLF, 35355, 2);
        };
        if (((((SLF.AIVAR[43]) == (ID_BEAR)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_ICEBEAR))) || ((SLF.AIVAR[43]) == (ID_BLACKBEAR))) || ((SLF.AIVAR[43]) == (ID_BEAR_SQ114))) {
            CREATEINVITEMS(SLF, 35356, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[0]) == (TRUE)) {
        if (((SLF.AIVAR[43]) == (ID_KEILER)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_KEILER))) {
            CREATEINVITEMS(SLF, 35372, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKWOLF)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_ORCDOG)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_ICEWOLF)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_WARG)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER_CURSED)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_DRAGONSNAPPER)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_RAZOR)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF_CURSED)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if (((SLF.AIVAR[43]) == (ID_SHADOWBEAST)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_SHADOW))) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SHADOWBEAST_SKELETON)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODHOUND)) {
            CREATEINVITEMS(SLF, 33852, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SEASWAMPSHARK)) {
            CREATEINVITEMS(SLF, 35352, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPSHARK)) {
            CREATEINVITEMS(SLF, 33869, 1);
        };
        if ((((((SLF.AIVAR[43]) == (ID_TROLL)) || ((SLF.AIVAR[43]) == (ID_TROLL_CURSED))) || ((SLF.AIVAR[43]) == (ID_SWAMPTROLL))) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_TROLL))) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_TROLL))) {
            CREATEINVITEMS(SLF, 33870, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_TROLL_BLACK)) {
            CREATEINVITEMS(SLF, 33870, 4);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[1]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_WARAN)) {
            CREATEINVITEMS(SLF, 33850, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPWARAN)) {
            CREATEINVITEMS(SLF, 33850, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_FIREWARAN)) {
            CREATEINVITEMS(SLF, 33850, 4);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER)) {
            CREATEINVITEMS(SLF, 33850, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER_CURSED)) {
            CREATEINVITEMS(SLF, 33850, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_RAZOR)) {
            CREATEINVITEMS(SLF, 33850, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_DRAGONSNAPPER)) {
            CREATEINVITEMS(SLF, 33850, 4);
        };
        if (((SLF.AIVAR[43]) == (ID_SHADOWBEAST)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_SHADOW))) {
            CREATEINVITEMS(SLF, 33850, 4);
        };
        if ((SLF.AIVAR[43]) == (ID_SHADOWBEAST_SKELETON)) {
            CREATEINVITEMS(SLF, 33850, 4);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODHOUND)) {
            CREATEINVITEMS(SLF, 33850, 4);
        };
        if (((((SLF.AIVAR[43]) == (ID_BEAR)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_ICEBEAR))) || ((SLF.AIVAR[43]) == (ID_BLACKBEAR))) || ((SLF.AIVAR[43]) == (ID_BEAR_SQ114))) {
            CREATEINVITEMS(SLF, 33850, 4);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF)) {
            CREATEINVITEMS(SLF, 33850, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKWOLF)) {
            CREATEINVITEMS(SLF, 33850, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF_CURSED)) {
            CREATEINVITEMS(SLF, 33850, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ORCDOG)) {
            CREATEINVITEMS(SLF, 33850, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WARG)) {
            CREATEINVITEMS(SLF, 33850, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ICEWOLF)) {
            CREATEINVITEMS(SLF, 33850, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SEALURKER)) {
            CREATEINVITEMS(SLF, 35353, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_LURKER)) {
            CREATEINVITEMS(SLF, 33851, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_OLDLURKER)) {
            CREATEINVITEMS(SLF, 33851, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_ARIES)) {
            CREATEINVITEMS(SLF, 35330, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_LAMB)) {
            CREATEINVITEMS(SLF, 35331, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SHEEP)) {
            CREATEINVITEMS(SLF, 33847, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_YMOLERAT)) {
            CREATEINVITEMS(SLF, 35344, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MOLERAT)) {
            CREATEINVITEMS(SLF, 35343, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPRAT)) {
            CREATEINVITEMS(SLF, 35345, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKWOLF)) {
            CREATEINVITEMS(SLF, 35350, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF)) {
            CREATEINVITEMS(SLF, 33848, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ICEWOLF)) {
            CREATEINVITEMS(SLF, 35347, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ORCDOG)) {
            CREATEINVITEMS(SLF, 35349, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WARG)) {
            CREATEINVITEMS(SLF, 33859, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SHADOWBEAST)) {
            CREATEINVITEMS(SLF, 33863, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BEAR_SQ114)) {
            CREATEINVITEMS(SLF, 35329, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKBEAR)) {
            CREATEINVITEMS(SLF, 35327, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BEAR)) {
            CREATEINVITEMS(SLF, 35326, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPTROLL)) {
            CREATEINVITEMS(SLF, 35339, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_CAVETROLL)) {
            CREATEINVITEMS(SLF, 35340, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_TROLL)) {
            CREATEINVITEMS(SLF, 33865, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_TROLL_BLACK)) {
            CREATEINVITEMS(SLF, 33866, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_KEILER)) {
            CREATEINVITEMS(SLF, 33860, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_YKEILER)) {
            CREATEINVITEMS(SLF, 35332, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKRAT)) {
            CREATEINVITEMS(SLF, 35342, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GIANT_RAT)) {
            CREATEINVITEMS(SLF, 35341, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_GIANTRAT)) {
            CREATEINVITEMS(SLF, 35336, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_TROLL)) {
            CREATEINVITEMS(SLF, 35337, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_SHADOW)) {
            CREATEINVITEMS(SLF, 35335, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_KEILER)) {
            CREATEINVITEMS(SLF, 35333, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_MOLERAT)) {
            CREATEINVITEMS(SLF, 35334, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_ICEBEAR)) {
            CREATEINVITEMS(SLF, 35328, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[13]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_FIREWARAN)) {
            CREATEINVITEMS(SLF, 35338, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_OLDLURKER)) {
            CREATEINVITEMS(SLF, 35315, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SEALURKER)) {
            CREATEINVITEMS(SLF, 35314, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_LURKER)) {
            CREATEINVITEMS(SLF, 33858, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BIGSNAPPER)) {
            CREATEINVITEMS(SLF, 35317, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER)) {
            CREATEINVITEMS(SLF, 35316, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_RAZOR)) {
            CREATEINVITEMS(SLF, 35318, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_DRAGONSNAPPER)) {
            CREATEINVITEMS(SLF, 35319, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPWARAN)) {
            CREATEINVITEMS(SLF, 35321, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WARAN)) {
            CREATEINVITEMS(SLF, 35320, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_FIREWARAN)) {
            CREATEINVITEMS(SLF, 35322, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ALLIGATOR)) {
            CREATEINVITEMS(SLF, 35324, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_TURTLE)) {
            CREATEINVITEMS(SLF, 35325, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SEASWAMPSHARK)) {
            CREATEINVITEMS(SLF, 35323, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPSHARK)) {
            CREATEINVITEMS(SLF, 33864, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[3]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_GOLEMVOLFZACKE)) {
            CREATEINVITEMS(SLF, 35370, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GOLEMNATURE)) {
            CREATEINVITEMS(SLF, 35368, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GOLEMMAGIC)) {
            CREATEINVITEMS(SLF, 35369, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GOLEMCMENTARY)) {
            CREATEINVITEMS(SLF, 35367, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_STONEGOLEM)) {
            CREATEINVITEMS(SLF, 33871, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_FIREGOLEM)) {
            CREATEINVITEMS(SLF, 33872, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ICEGOLEM)) {
            CREATEINVITEMS(SLF, 33873, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPGOLEM)) {
            CREATEINVITEMS(SLF, 35366, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_DEMON)) {
            CREATEINVITEMS(SLF, 33876, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_DEMON_LORD)) {
            CREATEINVITEMS(SLF, 33876, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GARGOYLE)) {
            CREATEINVITEMS(SLF, 35371, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[4]) == (TRUE)) {
        if (((SLF.AIVAR[43]) == (ID_SHADOWBEAST)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_SHADOW))) {
            CREATEINVITEMS(SLF, 33868, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SHADOWBEAST_SKELETON)) {
            CREATEINVITEMS(SLF, 35358, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[5]) == (TRUE)) {
        if (((SLF.AIVAR[43]) == (ID_FIREWARAN)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_FIREWARAN))) {
            CREATEINVITEMS(SLF, 33867, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WARAN)) {
            CREATEINVITEMS(SLF, 35373, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPWARAN)) {
            CREATEINVITEMS(SLF, 35373, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[6]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY)) {
            CREATEINVITEMS(SLF, 33855, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY_RIVER)) {
            CREATEINVITEMS(SLF, 33855, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY_RUNE)) {
            CREATEINVITEMS(SLF, 35365, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPDRONE)) {
            CREATEINVITEMS(SLF, 35364, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[7]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_SWAMPDRONE)) {
            CREATEINVITEMS(SLF, 35363, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY_RIVER)) {
            CREATEINVITEMS(SLF, 35305, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY_RUNE)) {
            CREATEINVITEMS(SLF, 35304, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY)) {
            CREATEINVITEMS(SLF, 33856, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[8]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_FORESTBUG)) {
            CREATEINVITEMS(SLF, 35357, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GIANTBUG_CURSED)) {
            CREATEINVITEMS(SLF, 35357, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GIANT_BUG)) {
            CREATEINVITEMS(SLF, 33849, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLER)) {
            CREATEINVITEMS(SLF, 33853, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLERWARRIOR)) {
            CREATEINVITEMS(SLF, 33853, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[9]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLER)) {
            CREATEINVITEMS(SLF, 33862, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLERWARRIOR)) {
            CREATEINVITEMS(SLF, 33862, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[17]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_TURTLE)) {
            CREATEINVITEMS(SLF, 35360, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_CRAB)) {
            CREATEINVITEMS(SLF, 35361, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLER)) {
            CREATEINVITEMS(SLF, 33862, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLERWARRIOR)) {
            CREATEINVITEMS(SLF, 33862, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[4]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_DRAGONSNAPPER)) {
            CREATEINVITEMS(SLF, 33861, 2);
        };
    };
    if ((SLF.AIVAR[43]) == (ID_MEATBUG)) {
        CREATEINVITEMS(SLF, 33843, 1);
    };
    if ((SLF.AIVAR[43]) == (ID_GOBBO_SKELETON)) {
        CREATEINVITEMS(SLF, 33874, 1);
    };
    if ((SLF.AIVAR[43]) == (ID_SKELETON)) {
        CREATEINVITEMS(SLF, 33875, 1);
    };
    if ((SLF.AIVAR[43]) == (ID_BLATTCRAWLER)) {
        CREATEINVITEMS(SLF, 33842, 1);
    };
    GOBLINGREEN_RANDOMIZER = HLP_RANDOM(100);
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 34207, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) <= (5))) {
        CREATEINVITEMS(SLF, 34292, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) <= (15))) {
        CREATEINVITEMS(SLF, 34203, 5);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) <= (30))) {
        CREATEINVITEMS(SLF, 33972, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) <= (50))) {
        CREATEINVITEMS(SLF, 34203, 2);
    };
    GOBLINBLACK_RANDOMIZER = HLP_RANDOM(100);
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 34212, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) <= (5))) {
        CREATEINVITEMS(SLF, 33972, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) <= (15))) {
        CREATEINVITEMS(SLF, 34203, 10);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) <= (30))) {
        CREATEINVITEMS(SLF, 34294, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) <= (50))) {
        CREATEINVITEMS(SLF, 34203, 5);
    };
    FROG_RANDOMIZER = HLP_RANDOM(8);
    if ((SLF.AIVAR[43]) == (ID_FROG)) {
        if ((FROG_RANDOMIZER) == (0)) {
            CREATEINVITEMS(SLF, 34280, 1);
            CREATEINVITEMS(SLF, 34203, 4);
        } else if ((FROG_RANDOMIZER) == (1)) {
            CREATEINVITEMS(SLF, 34204, 2);
        } else if ((FROG_RANDOMIZER) == (2)) {
            CREATEINVITEMS(SLF, 34280, 1);
            CREATEINVITEMS(SLF, 34203, 4);
        } else if ((FROG_RANDOMIZER) == (3)) {
            CREATEINVITEMS(SLF, 36357, 2);
        } else if ((FROG_RANDOMIZER) == (4)) {
            CREATEINVITEMS(SLF, 37647, 1);
            CREATEINVITEMS(SLF, 34203, 2);
        } else if ((FROG_RANDOMIZER) == (5)) {
            CREATEINVITEMS(SLF, 37655, 2);
            CREATEINVITEMS(SLF, 34203, 2);
        } else if ((FROG_RANDOMIZER) == (6)) {
            CREATEINVITEMS(SLF, 34298, 2);
            CREATEINVITEMS(SLF, 34294, 1);
        } else if ((FROG_RANDOMIZER) == (7)) {
            CREATEINVITEMS(SLF, 34203, 6);
            CREATEINVITEMS(SLF, 34292, 1);
        } else if ((FROG_RANDOMIZER) == (8)) {
            CREATEINVITEMS(SLF, 34282, 1);
        };
    };
    ORC_RANDOMIZER = HLP_RANDOM(10);
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 34354, 1);
        CREATEINVITEMS(SLF, 34203, 2);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (1))) {
        CREATEINVITEMS(SLF, 34352, 1);
        CREATEINVITEMS(SLF, 36419, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (2))) {
        CREATEINVITEMS(SLF, 34352, 2);
        CREATEINVITEMS(SLF, 34203, 18);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (3))) {
        CREATEINVITEMS(SLF, 33986, 1);
        CREATEINVITEMS(SLF, 34207, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (4))) {
        CREATEINVITEMS(SLF, 34280, 1);
        CREATEINVITEMS(SLF, 34203, 4);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) <= (7))) {
        CREATEINVITEMS(SLF, 34203, 9);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 34344, 1);
        CREATEINVITEMS(SLF, 34203, 5);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (1))) {
        CREATEINVITEMS(SLF, 34339, 2);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (2))) {
        CREATEINVITEMS(SLF, 34339, 1);
        CREATEINVITEMS(SLF, 34228, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (3))) {
        CREATEINVITEMS(SLF, 34334, 2);
        CREATEINVITEMS(SLF, 34203, 12);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (4))) {
        CREATEINVITEMS(SLF, 34334, 1);
        CREATEINVITEMS(SLF, 34222, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) <= (8))) {
        CREATEINVITEMS(SLF, 34276, 2);
        CREATEINVITEMS(SLF, 34203, 8);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 33848, 1);
        CREATEINVITEMS(SLF, 34357, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) == (1))) {
        CREATEINVITEMS(SLF, 34212, 1);
        CREATEINVITEMS(SLF, 34352, 1);
        CREATEINVITEMS(SLF, 34203, 26);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) == (2))) {
        CREATEINVITEMS(SLF, 34689, 1);
        CREATEINVITEMS(SLF, 34742, 2);
        CREATEINVITEMS(SLF, 33852, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) <= (5))) {
        CREATEINVITEMS(SLF, 34203, 19);
        CREATEINVITEMS(SLF, 34354, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) == (6))) {
        CREATEINVITEMS(SLF, 33859, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) <= (9))) {
        CREATEINVITEMS(SLF, 34203, 22);
        CREATEINVITEMS(SLF, 34352, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON)) && ((ORC_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 34344, 2);
        CREATEINVITEMS(SLF, 34212, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON)) && ((ORC_RANDOMIZER) <= (2))) {
        CREATEINVITEMS(SLF, 34344, 1);
        CREATEINVITEMS(SLF, 34354, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON)) && ((ORC_RANDOMIZER) <= (6))) {
        CREATEINVITEMS(SLF, 34339, 2);
        CREATEINVITEMS(SLF, 34224, 1);
    };
    if ((SLF.AIVAR[43]) == (ID_DEMON)) {
        CREATEINVITEMS(SLF, 34339, 1);
        CREATEINVITEMS(SLF, 34354, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON_LORD)) && ((ORC_RANDOMIZER) <= (1))) {
        CREATEINVITEMS(SLF, 34344, 2);
        CREATEINVITEMS(SLF, 34357, 2);
        CREATEINVITEMS(SLF, 34708, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON_LORD)) && ((ORC_RANDOMIZER) <= (5))) {
        CREATEINVITEMS(SLF, 34344, 2);
        CREATEINVITEMS(SLF, 34357, 2);
    };
    if ((SLF.AIVAR[43]) == (ID_DEMON_LORD)) {
        CREATEINVITEMS(SLF, 34344, 1);
        CREATEINVITEMS(SLF, 34357, 1);
    };
    SCAV_RANDOMIZER = HLP_RANDOM(3);
    if ((SLF.AIVAR[43]) == (ID_SCAVENGER)) {
        if ((SCAV_RANDOMIZER) == (0)) {
            CREATEINVITEMS(SLF, 36447, 1);
        };
    };
    if ((((SLF.AIVAR[43]) == (ID_TURTLE)) && ((LOG_GETSTATUS(MIS_PQ105)) == (LOG_RUNNING))) && ((PQ105_WEHAVEMIRT) == (FALSE))) {
        CREATEINVITEMS(SELF, 37649, 1);
    };
    SLF.AIVAR[11] = TRUE;
}

