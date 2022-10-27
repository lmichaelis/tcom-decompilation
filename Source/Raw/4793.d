func void EVENTSMANAGER_SQ317() {
    if (((SQ317_KILLDINKEL) == (3)) || ((KAPITEL) == (5))) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) {
        if ((SQ317_HOMERSPLAN) == (1)) {
            if ((((((NPC_GETDISTTOWP(HERO, "PART17_SQ317_CORTEZWALL_01")) <= (SQ317_CORTEZWALL_DISTANCE)) || ((NPC_GETDISTTOWP(HERO, "PART17_SQ317_CORTEZWALL_02")) <= (SQ317_CORTEZWALL_DISTANCE))) || ((NPC_GETDISTTOWP(HERO, "PART17_SQ317_CORTEZWALL_03")) <= (SQ317_CORTEZWALL_DISTANCE))) || ((NPC_GETDISTTOWP(HERO, "PART17_SQ317_CORTEZWALL_04")) <= (SQ317_CORTEZWALL_DISTANCE))) || ((NPC_GETDISTTOWP(HERO, "PART17_SQ317_CORTEZWALL_05")) <= (SQ317_CORTEZWALL_DISTANCE))) {
                SQ317_HOMERSPLAN = 2;
                B_LOGENTRY(TOPIC_SQ317, LOG_SQ317_GOTPLAN);
            };
        } else if ((SQ317_HOMERSPLAN) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, "TELEPORT_SWAMPV2")) <= (850)) {
                SQ317_HOMERSPLAN = 3;
                B_LOGENTRY(TOPIC_SQ317, LOG_SQ317_FOUNDTELEPORTPLACE);
            };
        } else if ((SQ317_HOMERSPLAN) == (3)) {
            if ((SQ317_GOTRUNE) == (FALSE)) {
                if ((((TELEPORT_CITYINNOS) == (TRUE)) || ((TELEPORT_CITYADANOS) == (TRUE))) || ((TELEPORT_CITYHOME) == (TRUE))) {
                    SQ317_GOTRUNE = TRUE;
                    B_LOGENTRY(TOPIC_SQ317, LOG_SQ317_GOTRUNE);
                };
            };
        };
        if ((SQ317_FOLLOWSAFTEY) == (TRUE)) {
            if ((SQ317_HOMERESCAPED) == (FALSE)) {
                if ((((C_BODYSTATECONTAINS(HERO, BS_SWIM)) || (C_BODYSTATECONTAINS(HERO, BS_DIVE))) || (C_BODYSTATECONTAINS(NONE_13719_HOMER, BS_SWIM))) || (C_BODYSTATECONTAINS(NONE_13719_HOMER, BS_DIVE))) {
                    SQ317_FOLLOWSAFTEY = 2;
                    SQ317_HOMERWAITATBEACH_TELEPORT();
                };
                if ((NPC_GETDISTTOWP(HERO, "PART17_HAVEN_CAVE_06")) <= (600)) {
                    SQ317_FOLLOWSAFTEY = 3;
                    SQ317_HOMERWAITATEXIT();
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ317)) == (LOG_SUCCESS)) {
        if ((SQ317_KILLDINKEL) == (2)) {
            if ((SQ317_KILLDINKEL_DAY) <= ((WLD_GETDAY()) - (2))) {
                SQ317_KILLDINKEL = 3;
                SQ317_DINKIELBODY();
            };
        };
    };
}

const int EVENTSMANAGER_SQ317.SQ317_CORTEZWALL_DISTANCE = 1200;
