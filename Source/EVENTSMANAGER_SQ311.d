func void EVENTSMANAGER_SQ311() {
    if ((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) {
        if ((SQ311_SPAWNOGISKEY) == (1)) {
            SQ311_SPAWNOGISKEY = 2;
            MOB_CHANGEFOCUSNAME("SQ311_OGIS", "MOBNAME_CORPSEOGIS");
            MOB_CREATEITEMS("SQ311_OGIS", 37238, 1);
            PRINTD("But do zabrania w ciele Ogisa");
        } else if ((SQ311_SPAWNOGISKEY) == (2)) {
            if ((SQ311_FOUNDOGISBODY_LOGENTRY) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART10_SQ311_OGIS")) <= (500)) {
                    if (NPC_KNOWSINFO(HERO, 81046)) {
                        B_LOGENTRY(TOPIC_SQ311, LOG_SQ311_OGISBODY_V1);
                    } else {
                        B_LOGENTRY(TOPIC_SQ311, LOG_SQ311_OGISBODY_V2);
                    };
                    SQ311_FOUNDOGISBODY_LOGENTRY = TRUE;
                };
            };
        };
        if ((SQ311_MILITIATRAP) == (2)) {
            if (NPC_ISDEAD(MIL_11142_MILITIA)) {
                SQ311_MILITIATRAP = 3;
                B_LOGENTRY(TOPIC_SQ311, LOG_SQ311_MILITIATRAP);
            };
        };
        if ((SQ311_FINDCHEST) == (1)) {
            if ((NPC_HASITEMS(HERO, 37241)) >= (1)) {
                SQ311_FINDCHEST = 2;
                B_LOGENTRY(TOPIC_SQ311, LOG_SQ311_FOUNDLETTER);
            };
        };
        if ((SQ311_FIGHTWITHLEWKO) == (1)) {
            if (NPC_ISDEAD(MIL_11130_LEWKO)) {
                B_LOGENTRY(TOPIC_SQ311, LOG_SQ311_LEWKO_DEAD);
                SQ311_FIGHTWITHLEWKO = 2;
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ311)) == (LOG_SUCCESS)) {
        if ((SQ311_HIDEMALENCORPSE) == (1)) {
            if ((SQ311_HIDEMALENCORPSE_DAY) <= ((WLD_GETDAY()) - (2))) {
                SQ311_HIDEMALENCORPSE = 2;
                FF_APPLYONCEEXTGT(62389, 0, -(1));
            };
        };
    };
}

