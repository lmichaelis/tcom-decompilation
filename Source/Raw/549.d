func void B_GIVEDEATHINV(var C_NPC SLF) {
    if ((SLF.AIVAR[11]) == (TRUE)) {
        return;
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[14]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_SCAVENGER)) {
            CREATEINVITEMS(SLF, 0x89ed, 1);
        };
        if (((SLF.AIVAR[43]) == (ID_BLACKRAT)) || ((SLF.AIVAR[43]) == (ID_GIANT_RAT))) {
            CREATEINVITEMS(SLF, 0x89ea, 1);
        };
        if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) || ((SLF.AIVAR[43]) == (ID_GOBBO_BLACK))) {
            CREATEINVITEMS(SLF, 0x89eb, 1);
        };
        if ((((SLF.AIVAR[43]) == (ID_GIANT_BUG)) || ((SLF.AIVAR[43]) == (ID_FORESTBUG))) || ((SLF.AIVAR[43]) == (ID_GIANTBUG_CURSED))) {
            CREATEINVITEMS(SLF, 0x89ec, 1);
        };
        if (((((SLF.AIVAR[43]) == (ID_MOLERAT)) || ((SLF.AIVAR[43]) == (ID_YMOLERAT))) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_MOLERAT))) || ((SLF.AIVAR[43]) == (ID_SWAMPRAT))) {
            CREATEINVITEMS(SLF, 0x89f1, 1);
        };
        if ((((SLF.AIVAR[43]) == (ID_KEILER)) || ((SLF.AIVAR[43]) == (ID_YKEILER))) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_KEILER))) {
            CREATEINVITEMS(SLF, 0x89f0, 1);
        };
        if ((((SLF.AIVAR[43]) == (ID_LURKER)) || ((SLF.AIVAR[43]) == (ID_OLDLURKER))) || ((SLF.AIVAR[43]) == (ID_SEALURKER))) {
            CREATEINVITEMS(SLF, 0x89ef, 1);
        };
        if (((((SLF.AIVAR[43]) == (ID_BLOODFLY)) || ((SLF.AIVAR[43]) == (ID_BLOODFLY_RIVER))) || ((SLF.AIVAR[43]) == (ID_BLOODFLY_RUNE))) || ((SLF.AIVAR[43]) == (ID_SWAMPDRONE))) {
            CREATEINVITEMS(SLF, 0x89ee, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[15]) == (TRUE)) {
        if (((SLF.AIVAR[43]) == (ID_MOLERAT)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_MOLERAT))) {
            CREATEINVITEMS(SLF, 0x8a1a, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPRAT)) {
            CREATEINVITEMS(SLF, 0x8a1b, 2);
        };
        if (((((SLF.AIVAR[43]) == (ID_BEAR)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_ICEBEAR))) || ((SLF.AIVAR[43]) == (ID_BLACKBEAR))) || ((SLF.AIVAR[43]) == (ID_BEAR_SQ114))) {
            CREATEINVITEMS(SLF, 0x8a1c, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[0]) == (TRUE)) {
        if (((SLF.AIVAR[43]) == (ID_KEILER)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_KEILER))) {
            CREATEINVITEMS(SLF, 0x8a2c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKWOLF)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_ORCDOG)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_ICEWOLF)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_WARG)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER_CURSED)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_DRAGONSNAPPER)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_RAZOR)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF_CURSED)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if (((SLF.AIVAR[43]) == (ID_SHADOWBEAST)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_SHADOW))) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SHADOWBEAST_SKELETON)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODHOUND)) {
            CREATEINVITEMS(SLF, 0x843c, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SEASWAMPSHARK)) {
            CREATEINVITEMS(SLF, 0x8a18, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPSHARK)) {
            CREATEINVITEMS(SLF, 0x844d, 1);
        };
        if ((((((SLF.AIVAR[43]) == (ID_TROLL)) || ((SLF.AIVAR[43]) == (ID_TROLL_CURSED))) || ((SLF.AIVAR[43]) == (ID_SWAMPTROLL))) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_TROLL))) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_TROLL))) {
            CREATEINVITEMS(SLF, 0x844e, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_TROLL_BLACK)) {
            CREATEINVITEMS(SLF, 0x844e, 4);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[1]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_WARAN)) {
            CREATEINVITEMS(SLF, 0x843a, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPWARAN)) {
            CREATEINVITEMS(SLF, 0x843a, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_FIREWARAN)) {
            CREATEINVITEMS(SLF, 0x843a, 4);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER)) {
            CREATEINVITEMS(SLF, 0x843a, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER_CURSED)) {
            CREATEINVITEMS(SLF, 0x843a, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_RAZOR)) {
            CREATEINVITEMS(SLF, 0x843a, 2);
        };
        if ((SLF.AIVAR[43]) == (ID_DRAGONSNAPPER)) {
            CREATEINVITEMS(SLF, 0x843a, 4);
        };
        if (((SLF.AIVAR[43]) == (ID_SHADOWBEAST)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_SHADOW))) {
            CREATEINVITEMS(SLF, 0x843a, 4);
        };
        if ((SLF.AIVAR[43]) == (ID_SHADOWBEAST_SKELETON)) {
            CREATEINVITEMS(SLF, 0x843a, 4);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODHOUND)) {
            CREATEINVITEMS(SLF, 0x843a, 4);
        };
        if (((((SLF.AIVAR[43]) == (ID_BEAR)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_ICEBEAR))) || ((SLF.AIVAR[43]) == (ID_BLACKBEAR))) || ((SLF.AIVAR[43]) == (ID_BEAR_SQ114))) {
            CREATEINVITEMS(SLF, 0x843a, 4);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF)) {
            CREATEINVITEMS(SLF, 0x843a, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKWOLF)) {
            CREATEINVITEMS(SLF, 0x843a, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF_CURSED)) {
            CREATEINVITEMS(SLF, 0x843a, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ORCDOG)) {
            CREATEINVITEMS(SLF, 0x843a, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WARG)) {
            CREATEINVITEMS(SLF, 0x843a, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ICEWOLF)) {
            CREATEINVITEMS(SLF, 0x843a, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SEALURKER)) {
            CREATEINVITEMS(SLF, 0x8a19, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_LURKER)) {
            CREATEINVITEMS(SLF, 0x843b, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_OLDLURKER)) {
            CREATEINVITEMS(SLF, 0x843b, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_ARIES)) {
            CREATEINVITEMS(SLF, 0x8a02, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_LAMB)) {
            CREATEINVITEMS(SLF, 0x8a03, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SHEEP)) {
            CREATEINVITEMS(SLF, 0x8437, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_YMOLERAT)) {
            CREATEINVITEMS(SLF, 0x8a10, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MOLERAT)) {
            CREATEINVITEMS(SLF, 0x8a0f, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPRAT)) {
            CREATEINVITEMS(SLF, 0x8a11, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKWOLF)) {
            CREATEINVITEMS(SLF, 0x8a16, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WOLF)) {
            CREATEINVITEMS(SLF, 0x8438, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ICEWOLF)) {
            CREATEINVITEMS(SLF, 0x8a13, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ORCDOG)) {
            CREATEINVITEMS(SLF, 0x8a15, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WARG)) {
            CREATEINVITEMS(SLF, 0x8443, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SHADOWBEAST)) {
            CREATEINVITEMS(SLF, 0x8447, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BEAR_SQ114)) {
            CREATEINVITEMS(SLF, 0x8a01, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKBEAR)) {
            CREATEINVITEMS(SLF, 0x89ff, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BEAR)) {
            CREATEINVITEMS(SLF, 0x89fe, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPTROLL)) {
            CREATEINVITEMS(SLF, 0x8a0b, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_CAVETROLL)) {
            CREATEINVITEMS(SLF, 0x8a0c, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_TROLL)) {
            CREATEINVITEMS(SLF, 0x8449, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_TROLL_BLACK)) {
            CREATEINVITEMS(SLF, 0x844a, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_KEILER)) {
            CREATEINVITEMS(SLF, 0x8444, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_YKEILER)) {
            CREATEINVITEMS(SLF, 0x8a04, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLACKRAT)) {
            CREATEINVITEMS(SLF, 0x8a0e, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GIANT_RAT)) {
            CREATEINVITEMS(SLF, 0x8a0d, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_GIANTRAT)) {
            CREATEINVITEMS(SLF, 0x8a08, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_TROLL)) {
            CREATEINVITEMS(SLF, 0x8a09, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_SHADOW)) {
            CREATEINVITEMS(SLF, 0x8a07, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_KEILER)) {
            CREATEINVITEMS(SLF, 0x8a05, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_MOLERAT)) {
            CREATEINVITEMS(SLF, 0x8a06, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_ICEBEAR)) {
            CREATEINVITEMS(SLF, 0x8a00, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[13]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_FIREWARAN)) {
            CREATEINVITEMS(SLF, 0x8a0a, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_OLDLURKER)) {
            CREATEINVITEMS(SLF, 0x89f3, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SEALURKER)) {
            CREATEINVITEMS(SLF, 0x89f2, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_LURKER)) {
            CREATEINVITEMS(SLF, 0x8442, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BIGSNAPPER)) {
            CREATEINVITEMS(SLF, 0x89f5, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SNAPPER)) {
            CREATEINVITEMS(SLF, 0x89f4, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_RAZOR)) {
            CREATEINVITEMS(SLF, 0x89f6, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_DRAGONSNAPPER)) {
            CREATEINVITEMS(SLF, 0x89f7, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPWARAN)) {
            CREATEINVITEMS(SLF, 0x89f9, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WARAN)) {
            CREATEINVITEMS(SLF, 0x89f8, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_FIREWARAN)) {
            CREATEINVITEMS(SLF, 0x89fa, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ALLIGATOR)) {
            CREATEINVITEMS(SLF, 0x89fc, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_TURTLE)) {
            CREATEINVITEMS(SLF, 0x89fd, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SEASWAMPSHARK)) {
            CREATEINVITEMS(SLF, 0x89fb, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPSHARK)) {
            CREATEINVITEMS(SLF, 0x8448, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[3]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_GOLEMVOLFZACKE)) {
            CREATEINVITEMS(SLF, 0x8a2a, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GOLEMNATURE)) {
            CREATEINVITEMS(SLF, 0x8a28, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GOLEMMAGIC)) {
            CREATEINVITEMS(SLF, 0x8a29, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GOLEMCMENTARY)) {
            CREATEINVITEMS(SLF, 0x8a27, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_STONEGOLEM)) {
            CREATEINVITEMS(SLF, 0x844f, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_FIREGOLEM)) {
            CREATEINVITEMS(SLF, 0x8450, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_ICEGOLEM)) {
            CREATEINVITEMS(SLF, 0x8451, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPGOLEM)) {
            CREATEINVITEMS(SLF, 0x8a26, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_DEMON)) {
            CREATEINVITEMS(SLF, 0x8454, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_DEMON_LORD)) {
            CREATEINVITEMS(SLF, 0x8454, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GARGOYLE)) {
            CREATEINVITEMS(SLF, 0x8a2b, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[4]) == (TRUE)) {
        if (((SLF.AIVAR[43]) == (ID_SHADOWBEAST)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_SHADOW))) {
            CREATEINVITEMS(SLF, 0x844c, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SHADOWBEAST_SKELETON)) {
            CREATEINVITEMS(SLF, 0x8a1e, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[5]) == (TRUE)) {
        if (((SLF.AIVAR[43]) == (ID_FIREWARAN)) || ((SLF.AIVAR[43]) == (ID_WANTEDPOSTER_FIREWARAN))) {
            CREATEINVITEMS(SLF, 0x844b, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_WARAN)) {
            CREATEINVITEMS(SLF, 0x8a2d, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPWARAN)) {
            CREATEINVITEMS(SLF, 0x8a2d, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[6]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY)) {
            CREATEINVITEMS(SLF, 0x843f, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY_RIVER)) {
            CREATEINVITEMS(SLF, 0x843f, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY_RUNE)) {
            CREATEINVITEMS(SLF, 0x8a25, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_SWAMPDRONE)) {
            CREATEINVITEMS(SLF, 0x8a24, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[7]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_SWAMPDRONE)) {
            CREATEINVITEMS(SLF, 0x8a23, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY_RIVER)) {
            CREATEINVITEMS(SLF, 0x89e9, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY_RUNE)) {
            CREATEINVITEMS(SLF, 0x89e8, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_BLOODFLY)) {
            CREATEINVITEMS(SLF, 0x8440, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[8]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_FORESTBUG)) {
            CREATEINVITEMS(SLF, 0x8a1d, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GIANTBUG_CURSED)) {
            CREATEINVITEMS(SLF, 0x8a1d, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_GIANT_BUG)) {
            CREATEINVITEMS(SLF, 0x8439, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLER)) {
            CREATEINVITEMS(SLF, 0x843d, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLERWARRIOR)) {
            CREATEINVITEMS(SLF, 0x843d, 1);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[9]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLER)) {
            CREATEINVITEMS(SLF, 0x8446, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLERWARRIOR)) {
            CREATEINVITEMS(SLF, 0x8446, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[17]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_TURTLE)) {
            CREATEINVITEMS(SLF, 0x8a20, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_CRAB)) {
            CREATEINVITEMS(SLF, 0x8a21, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLER)) {
            CREATEINVITEMS(SLF, 0x8446, 1);
        };
        if ((SLF.AIVAR[43]) == (ID_MINECRAWLERWARRIOR)) {
            CREATEINVITEMS(SLF, 0x8446, 2);
        };
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[4]) == (TRUE)) {
        if ((SLF.AIVAR[43]) == (ID_DRAGONSNAPPER)) {
            CREATEINVITEMS(SLF, 0x8445, 2);
        };
    };
    if ((SLF.AIVAR[43]) == (ID_MEATBUG)) {
        CREATEINVITEMS(SLF, 0x8433, 1);
    };
    if ((SLF.AIVAR[43]) == (ID_GOBBO_SKELETON)) {
        CREATEINVITEMS(SLF, 0x8452, 1);
    };
    if ((SLF.AIVAR[43]) == (ID_SKELETON)) {
        CREATEINVITEMS(SLF, 0x8453, 1);
    };
    if ((SLF.AIVAR[43]) == (ID_BLATTCRAWLER)) {
        CREATEINVITEMS(SLF, 0x8432, 1);
    };
    GOBLINGREEN_RANDOMIZER = HLP_RANDOM(100);
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 0x859f, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) <= (5))) {
        CREATEINVITEMS(SLF, 0x85f4, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) <= (15))) {
        CREATEINVITEMS(SLF, 0x859b, 5);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) <= (30))) {
        CREATEINVITEMS(SLF, 0x84b4, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_GREEN)) && ((GOBLINGREEN_RANDOMIZER) <= (50))) {
        CREATEINVITEMS(SLF, 0x859b, 2);
    };
    GOBLINBLACK_RANDOMIZER = HLP_RANDOM(100);
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 0x85a4, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) <= (5))) {
        CREATEINVITEMS(SLF, 0x84b4, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) <= (15))) {
        CREATEINVITEMS(SLF, 0x859b, 10);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) <= (30))) {
        CREATEINVITEMS(SLF, 0x85f6, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_GOBBO_BLACK)) && ((GOBLINBLACK_RANDOMIZER) <= (50))) {
        CREATEINVITEMS(SLF, 0x859b, 5);
    };
    FROG_RANDOMIZER = HLP_RANDOM(8);
    if ((SLF.AIVAR[43]) == (ID_FROG)) {
        if ((FROG_RANDOMIZER) == (0)) {
            CREATEINVITEMS(SLF, 0x85e8, 1);
            CREATEINVITEMS(SLF, 0x859b, 4);
        } else if ((FROG_RANDOMIZER) == (1)) {
            CREATEINVITEMS(SLF, 0x859c, 2);
        } else if ((FROG_RANDOMIZER) == (2)) {
            CREATEINVITEMS(SLF, 0x85e8, 1);
            CREATEINVITEMS(SLF, 0x859b, 4);
        } else if ((FROG_RANDOMIZER) == (3)) {
            CREATEINVITEMS(SLF, 0x8e05, 2);
        } else if ((FROG_RANDOMIZER) == (4)) {
            CREATEINVITEMS(SLF, 0x930f, 1);
            CREATEINVITEMS(SLF, 0x859b, 2);
        } else if ((FROG_RANDOMIZER) == (5)) {
            CREATEINVITEMS(SLF, 0x9317, 2);
            CREATEINVITEMS(SLF, 0x859b, 2);
        } else if ((FROG_RANDOMIZER) == (6)) {
            CREATEINVITEMS(SLF, 0x85fa, 2);
            CREATEINVITEMS(SLF, 0x85f6, 1);
        } else if ((FROG_RANDOMIZER) == (7)) {
            CREATEINVITEMS(SLF, 0x859b, 6);
            CREATEINVITEMS(SLF, 0x85f4, 1);
        } else if ((FROG_RANDOMIZER) == (8)) {
            CREATEINVITEMS(SLF, 0x85ea, 1);
        };
    };
    ORC_RANDOMIZER = HLP_RANDOM(10);
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 0x8632, 1);
        CREATEINVITEMS(SLF, 0x859b, 2);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (1))) {
        CREATEINVITEMS(SLF, 0x8630, 1);
        CREATEINVITEMS(SLF, 0x8e43, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (2))) {
        CREATEINVITEMS(SLF, 0x8630, 2);
        CREATEINVITEMS(SLF, 0x859b, 18);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (3))) {
        CREATEINVITEMS(SLF, 0x84c2, 1);
        CREATEINVITEMS(SLF, 0x859f, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) == (4))) {
        CREATEINVITEMS(SLF, 0x85e8, 1);
        CREATEINVITEMS(SLF, 0x859b, 4);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCWARRIOR)) && ((ORC_RANDOMIZER) <= (7))) {
        CREATEINVITEMS(SLF, 0x859b, 9);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 0x8628, 1);
        CREATEINVITEMS(SLF, 0x859b, 5);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (1))) {
        CREATEINVITEMS(SLF, 0x8623, 2);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (2))) {
        CREATEINVITEMS(SLF, 0x8623, 1);
        CREATEINVITEMS(SLF, 0x85b4, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (3))) {
        CREATEINVITEMS(SLF, 0x861e, 2);
        CREATEINVITEMS(SLF, 0x859b, 12);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) == (4))) {
        CREATEINVITEMS(SLF, 0x861e, 1);
        CREATEINVITEMS(SLF, 0x85ae, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) && ((ORC_RANDOMIZER) <= (8))) {
        CREATEINVITEMS(SLF, 0x85e4, 2);
        CREATEINVITEMS(SLF, 0x859b, 8);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 0x8438, 1);
        CREATEINVITEMS(SLF, 0x8635, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) == (1))) {
        CREATEINVITEMS(SLF, 0x85a4, 1);
        CREATEINVITEMS(SLF, 0x8630, 1);
        CREATEINVITEMS(SLF, 0x859b, 26);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) == (2))) {
        CREATEINVITEMS(SLF, 0x8781, 1);
        CREATEINVITEMS(SLF, 0x87b6, 2);
        CREATEINVITEMS(SLF, 0x843c, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) <= (5))) {
        CREATEINVITEMS(SLF, 0x859b, 19);
        CREATEINVITEMS(SLF, 0x8632, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) == (6))) {
        CREATEINVITEMS(SLF, 0x8443, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_ORCELITE)) && ((ORC_RANDOMIZER) <= (9))) {
        CREATEINVITEMS(SLF, 0x859b, 22);
        CREATEINVITEMS(SLF, 0x8630, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON)) && ((ORC_RANDOMIZER) == (0))) {
        CREATEINVITEMS(SLF, 0x8628, 2);
        CREATEINVITEMS(SLF, 0x85a4, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON)) && ((ORC_RANDOMIZER) <= (2))) {
        CREATEINVITEMS(SLF, 0x8628, 1);
        CREATEINVITEMS(SLF, 0x8632, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON)) && ((ORC_RANDOMIZER) <= (6))) {
        CREATEINVITEMS(SLF, 0x8623, 2);
        CREATEINVITEMS(SLF, 0x85b0, 1);
    };
    if ((SLF.AIVAR[43]) == (ID_DEMON)) {
        CREATEINVITEMS(SLF, 0x8623, 1);
        CREATEINVITEMS(SLF, 0x8632, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON_LORD)) && ((ORC_RANDOMIZER) <= (1))) {
        CREATEINVITEMS(SLF, 0x8628, 2);
        CREATEINVITEMS(SLF, 0x8635, 2);
        CREATEINVITEMS(SLF, 0x8794, 1);
    };
    if (((SLF.AIVAR[43]) == (ID_DEMON_LORD)) && ((ORC_RANDOMIZER) <= (5))) {
        CREATEINVITEMS(SLF, 0x8628, 2);
        CREATEINVITEMS(SLF, 0x8635, 2);
    };
    if ((SLF.AIVAR[43]) == (ID_DEMON_LORD)) {
        CREATEINVITEMS(SLF, 0x8628, 1);
        CREATEINVITEMS(SLF, 0x8635, 1);
    };
    SCAV_RANDOMIZER = HLP_RANDOM(3);
    if ((SLF.AIVAR[43]) == (ID_SCAVENGER)) {
        if ((SCAV_RANDOMIZER) == (0)) {
            CREATEINVITEMS(SLF, 0x8e5f, 1);
        };
    };
    if ((((SLF.AIVAR[43]) == (ID_TURTLE)) && ((LOG_GETSTATUS(MIS_PQ105)) == (LOG_RUNNING))) && ((PQ105_WEHAVEMIRT) == (FALSE))) {
        CREATEINVITEMS(SELF, 0x9311, 1);
    };
    SLF.AIVAR[11] = TRUE;
}

var int B_GIVEDEATHINV.FROG_RANDOMIZER = 0;
