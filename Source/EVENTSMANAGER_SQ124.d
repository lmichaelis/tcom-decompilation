func void EVENTSMANAGER_SQ124() {
    if ((SQ124_REMOVEDOORS) == (2)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ124)) == (LOG_RUNNING)) {
        if ((SQ124_SKELETONSTATUS) == (1)) {
            if (((NPC_ISDEAD(GOBBO_SKELETON_SQ124_01)) && (NPC_ISDEAD(GOBBO_SKELETON_SQ124_02))) && (NPC_ISDEAD(GOBBO_SKELETON_SQ124_03))) {
                SQ124_SKELETONSTATUS = 2;
                B_LOGENTRY(TOPIC_SQ124, LOG_SQ124_GOBBOSDEAD);
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ124)) == (LOG_SUCCESS)) {
        if ((SQ124_REMOVEDOORS) == (1)) {
            if ((SQ124_REMOVEDOORS_DAY) <= ((WLD_GETDAY()) - (1))) {
                if ((NPC_GETDISTTOWP(HERO, "PART4_FISHERMAN_CAVE_29")) >= (2500)) {
                    SQ124_REMOVEDOORS = 2;
                    SQ124_REMOVEDOORS_PREPARE();
                };
            };
        };
    };
}

