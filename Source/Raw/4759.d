func void EVENTSMANAGER_SQ123() {
    if (((SQ123_KILLSVEN) == (2)) || (NPC_ISDEAD(NONE_6350_SVEN))) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ123)) == (LOG_RUNNING)) {
        if ((SQ123_FISHINGCONTEST) == (1)) {
            if ((SQ123_FISHINGCONTEST_DAY) <= ((WLD_GETDAY()) - (1))) {
                SQ123_FISHINGCONTEST = 2;
                SQ123_PREPARENPC();
            };
        } else if ((SQ123_FISHINGCONTEST) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, "PART4_FISHERMAN_SQ123_CUTSCENE_HERO")) <= (700)) {
                SQ123_FISHINGCONTEST = 3;
                SQ123_FISHINGCONTESTCUTSCENE_PREPARE();
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ123)) == (LOG_SUCCESS)) {
        if ((NPC_ISDEAD(NONE_6350_SVEN)) == (FALSE)) {
            if ((SQ123_KILLSVEN) == (1)) {
                if ((SQ123_KILLSVEN_DAY) <= ((WLD_GETDAY()) - (3))) {
                    SQ123_KILLSVEN = 2;
                    SQ123_REMOVESVEN();
                };
            };
        };
    };
}

