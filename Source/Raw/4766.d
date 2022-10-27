func void EVENTSMANAGER_SQ206() {
    if ((SQ206_AFTERQUEST) == (2)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ206)) == (LOG_RUNNING)) {
        if ((SQ206_KILLEDMONSTERS_FORESTBUGS) == (FALSE)) {
            if ((SQ206_FORESTBUGSDEAD()) == (TRUE)) {
                SQ206_KILLEDMONSTERS_FORESTBUGS = TRUE;
                B_LOGENTRY(TOPIC_SQ206, LOG_SQ206_FORESTBUGS);
            };
        };
        if ((SQ206_KILLEDMONSTERS_LURKERS) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART_15_MORITZ_PATH_02")) <= (0x7d0)) {
                SQ206_KILLEDMONSTERS_LURKERS = TRUE;
                B_LOGENTRY(TOPIC_SQ206, LOG_SQ206_LAKE);
            };
        };
        if ((SQ206_NEARCRAWLERS_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART15_MOB_144")) <= (0x4e2)) {
                SQ206_NEARCRAWLERS_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_SQ206, LOG_SQ206_BLATTCRAWLERS);
            };
        };
        if ((SQ206_YOUCANFINISH_LOGENTRY) == (FALSE)) {
            if ((((SQ206_KILLEDMONSTERS_FORESTBUGS) == (TRUE)) && ((SQ206_KILLEDMONSTERS_LURKERS) == (TRUE))) && ((SQ206_REPAIRROOF) == (TRUE))) {
                SQ206_YOUCANFINISH_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_SQ206, LOG_SQ206_YOUCANFINISH);
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ206)) == (LOG_SUCCESS)) {
        if ((SQ206_AFTERQUEST) == (1)) {
            if ((SQ206_AFTERQUEST_DAY) <= ((WLD_GETDAY()) - (3))) {
                if (((NPC_GETDISTTONPC(HERO, NONE_13754_BOLES)) >= (0x7d0)) && ((NPC_GETDISTTOWP(HERO, "PART15_MOB_141")) >= (0x1388))) {
                    SQ206_AFTERQUEST = 2;
                    if ((SQ206_BOLES_RESULT) == (1)) {
                        SQ206_REMOVEBOLES();
                    };
                    WLD_INSERTNPC(0xc3f0, "FP_ROAM_PART15_347");
                    WLD_INSERTNPC(0xc3f0, "FP_ROAM_PART15_201");
                    WLD_INSERTNPC(0xc3f0, "FP_ROAM_PART15_207");
                };
            };
        };
    };
}

var int EVENTSMANAGER_SQ206.SQ206_YOUCANFINISH_LOGENTRY = 0;
