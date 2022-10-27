func void EVENTSMANAGER_SQ117() {
    if ((LOG_GETSTATUS(MIS_SQ117)) == (LOG_RUNNING)) {
        if ((SQ117_ALLSNAPPERSDEAD) == (0)) {
            if ((((NPC_ISDEAD(SNAPPER_SQ117_01)) && (NPC_ISDEAD(SNAPPER_SQ117_02))) && (NPC_ISDEAD(SNAPPER_SQ117_03))) && (NPC_ISDEAD(SNAPPER_SQ117_04))) {
                SQ117_ALLSNAPPERSDEAD = 1;
                B_LOGENTRY(TOPIC_SQ117, LOG_SQ117_ALLSNAPERSDEAD);
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ117)) == (LOG_SUCCESS)) {
        if ((SQ117_REMOVECORPSESAFTERQUEST) == (0)) {
            if ((NPC_GETDISTTOWP(HERO, "PART16_SQ117_CORPSE_02")) <= (0x2710)) {
                SQ117_REMOVECORPSESAFTERQUEST = 1;
                SQ117_REMOVECORPSES();
            };
        };
    };
}

