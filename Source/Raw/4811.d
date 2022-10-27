func void EVENTSMANAGER_SQ508() {
    if ((SQ508_CASPARRUNAWAY) == (2)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ508)) == (LOG_RUNNING)) {
        if ((SQ508_READTOSTART) == (FALSE)) {
            if (NPC_KNOWSINFO(HERO, 0x13913)) {
                SQ508_NOVIZESMALLTALKCUTSCENE_STATUS = 1;
                SQ508_READTOSTART = TRUE;
                B_LOGENTRY(TOPIC_SQ508, LOG_SQ508_READYTOSTART);
            };
        } else if ((SQ508_NOVIZESMALLTALKCUTSCENE_STATUS) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "PART8_MONASTERY_SMALLTALK_01")) <= (1000)) {
                SQ508_NOVIZESMALLTALKCUTSCENE_STATUS = 2;
                SQ508_NOVIZESMALLTALKCUTSCENE_PREPARE();
            };
        };
        if ((SQ508_HELPNOVIZE) == (TRUE)) {
            if ((NPC_KNOWSINFO(HERO, 0x11164)) == (FALSE)) {
                if ((SQ508_ENOUGHEVIDENCE) == (FALSE)) {
                    if (((SQ508_ALLCORPSESDONE) == (TRUE)) && ((SQ508_NEARINNOSMOB_LOGENTRY) == (TRUE))) {
                        SQ508_ENOUGHEVIDENCE = TRUE;
                        B_LOGENTRY(TOPIC_SQ508, LOG_SQ508_ENOUGHEVIDENCE);
                    };
                };
                if ((SQ508_WARANSARENOTTHEKILLERS_LOGENTRY) == (FALSE)) {
                    if (((SQ508_CHECKWARANS_LOGENTRY) == (TRUE)) && ((SQ508_ALLCORPSESDONE) == (TRUE))) {
                        SQ508_WARANSARENOTTHEKILLERS_LOGENTRY = TRUE;
                        B_LOGENTRY(TOPIC_SQ508, LOG_SQ508_WARANSARENOTTHEKILLERS);
                    };
                };
                if ((SQ508_NEARINNOSMOB_LOGENTRY) == (FALSE)) {
                    if ((NPC_GETDISTTOWP(HERO, "PART8_GRAVEYARD_INNOS_02")) <= (300)) {
                        SQ508_NEARINNOSMOB_LOGENTRY = TRUE;
                        B_LOGENTRY(TOPIC_SQ508, LOG_SQ508_CHECKEDINNOSMOB);
                    };
                };
                if ((SQ508_CHECKWARANS_LOGENTRY) == (FALSE)) {
                    if ((NPC_GETDISTTOWP(HERO, "PART8_SQ508_CHECKWARANS")) <= (0x44c)) {
                        SQ508_CHECKWARANS_LOGENTRY = TRUE;
                        B_LOGENTRY(TOPIC_SQ508, LOG_SQ508_WARANS);
                    };
                };
            };
        };
        if ((SQ508_CANDACFIGHT) == (1)) {
            if ((SQ508_GOBBSAREDEAD()) == (TRUE)) {
                SQ508_CANDACFIGHT = 2;
                SQ508_SPAWNSKELETONS();
            };
        } else if ((SQ508_CANDACFIGHT) == (3)) {
            if (((SQ508_SKELETONSAREDEAD()) == (TRUE)) && ((NPC_ISINSTATE(PAL_100_CANDAC, 0xf09f)) == (FALSE))) {
                SQ508_CANDACFIGHT = 4;
                WLD_SENDTRIGGER("SQ508_MOVER_TRIGGERCUTSCENE");
                SQ508_JUDGMENT = 1;
            };
        };
        if ((SQ508_JUDGMENT) == (1)) {
            if ((NPC_GETDISTTOWP(PAL_100_CANDAC, PAL_100_CANDAC.WP)) <= (500)) {
                EVT_SQ508_TRIGGERCUTSCENE();
            };
        };
    };
    if (((LOG_GETSTATUS(MIS_SQ508)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_SQ508)) == (LOG_SUCCESS))) {
        if ((SQ508_CASPARRUNAWAY) == (1)) {
            if ((NPC_GETDISTTOWP(NONE_6239_CASPAR, RNG_NS42_WAYPOINT)) <= (600)) {
                SQ508_CASPARRUNAWAY = 2;
                B_REMOVENPC(0xcaf2);
            };
        };
    };
}

