func void EVENTSMANAGER_Q308() {
    if ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) {
        if ((Q308_ALLDONE_LOGENTRY) == (FALSE)) {
            if ((((LOG_GETSTATUS(MIS_Q309)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q311)) == (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_SQ305)) == (LOG_SUCCESS))) {
                if (NPC_KNOWSINFO(HERO, 0x144bb)) {
                    B_LOGENTRY(TOPIC_Q308, LOG_Q308_ALLTROPES_V2);
                } else {
                    B_LOGENTRY(TOPIC_Q308, LOG_Q308_ALLTROPES_V1);
                } else {
                    Q308_ALLDONE_LOGENTRY = TRUE;
                };
            };
        };
        if ((Q308_VOLKERHOUSECUTSCENE) == (FALSE)) {
            if ((Q308_LEONKUNOCUTSCENE) == (0)) {
                if ((((NPC_GETDISTTOWP(VLK_6127_KUNO, "PARTM4_ATTEMPT_KUNO")) <= (700)) && ((NPC_GETDISTTOWP(VLK_6128_LEON, "PARTM4_ATTEMPT_LEON")) <= (700))) && ((NPC_GETDISTTOWP(HERO, "PARTM4_ATTEMPT_KUNO")) <= (700))) {
                    HERO.AIVAR[4] = TRUE;
                    Q308_KUNOLEONCUTSCENE_PREPARE();
                    Q308_LEONKUNOCUTSCENE = 1;
                };
            };
        };
        if ((Q308_TELEPORTIVYTOHERO) == (FALSE)) {
            if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q311)) == (LOG_SUCCESS))) {
                if (((NPC_GETDISTTONPC(HERO, VLK_6426_VENZEL)) <= (1000)) || ((NPC_GETDISTTONPC(HERO, SLD_1010_INGOR)) <= (1000))) {
                    Q308_TELEPORTIVYTOHERO = TRUE;
                    if ((NPC_GETDISTTONPC(HERO, VLK_6426_VENZEL)) <= (1000)) {
                        B_STARTOTHERROUTINE(NONE_16_IVY, "Q308_FOLLOW_V2");
                        NPC_REFRESH(NONE_16_IVY);
                        TELEPORTNPCTOWP(0xe4af, NONE_16_IVY.WP);
                    } else if ((NPC_GETDISTTONPC(HERO, SLD_1010_INGOR)) <= (1000)) {
                        B_STARTOTHERROUTINE(NONE_16_IVY, "Q308_FOLLOW_V3");
                        NPC_REFRESH(NONE_16_IVY);
                        TELEPORTNPCTOWP(0xe4af, NONE_16_IVY.WP);
                    };
                };
            };
        };
        if ((Q308_TOTHEOLDTOWN_EVENTS) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM5_CITYHALL_02")) <= (600)) {
                if ((((NPC_GETDISTTOWP(SLD_5000_LORENZO, "PARTM5_CITYHALL_03")) <= (600)) && ((HERO.GUILD) == (GIL_SLD))) || (((NPC_GETDISTTOWP(MIL_4000_RODERICH, "PARTM5_CITYHALL_03")) <= (600)) && ((HERO.GUILD) == (GIL_MIL)))) {
                    Q308_TOTHEOLDTOWN_EVENTS = 3;
                    PRINTD("Id¹");
                    if ((HERO.GUILD) == (GIL_SLD)) {
                        Q308_LORENZO_RTNCHECK = 1;
                        B_STARTOTHERROUTINE(SLD_5000_LORENZO, "Q308");
                        NPC_REFRESH(SLD_5000_LORENZO);
                    } else if ((HERO.GUILD) == (GIL_MIL)) {
                        Q308_RODERICH_RTNCHECK = 1;
                        B_STARTOTHERROUTINE(MIL_4000_RODERICH, "Q308");
                        NPC_REFRESH(MIL_4000_RODERICH);
                    };
                    AI_SETWALKMODE(HERO, NPC_WALK);
                    AI_GOTOWP(HERO, "PARTM5_CITYHALL_19");
                };
            };
        };
        if (((Q308_JUDGECUTSCENEAVAILABLE) == (1)) && (!(NPC_ISINSTATE(MIL_4000_RODERICH, 0xf09f)))) {
            if ((((((NPC_GETDISTTOWP(VLK_6388_MORRIS, "PARTM5_CITYHALL_THRONE_03")) <= (700)) && ((NPC_GETDISTTOWP(MIL_4000_RODERICH, "PARTM5_CITYHALL_THRONE_02")) <= (700))) && ((NPC_GETDISTTOWP(SLD_5000_LORENZO, "PARTM5_CITYHALL_THRONE_01")) <= (700))) && ((NPC_GETDISTTOWP(VLK_6454_DANIS, "PARTM5_CITYHALL_DANIS")) <= (700))) && ((NPC_GETDISTTOWP(HERO, "PARTM5_CITYHALL_THRONE_03")) <= (0x1388))) {
                Q308_JUDGECUTSCENEAVAILABLE = 2;
                Q308_JUDGECUTSCENE_PREPARE();
                HERO.AIVAR[4] = TRUE;
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_Q308)) == (LOG_SUCCESS)) {
        if (((Q308_FINALCUTSCENE) == (1)) && ((NPC_ISINSTATE(NONE_16_IVY, 0xf09f)) == (FALSE))) {
            Q308_FINALCUTSCENE = 2;
            Q308_FINALCUTSCENE_PREPARE();
            HERO.AIVAR[4] = TRUE;
        };
    };
}

var int EVENTSMANAGER_Q308.Q308_ALLDONE_LOGENTRY = 0;
