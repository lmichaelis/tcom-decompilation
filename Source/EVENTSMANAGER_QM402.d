func void EVENTSMANAGER_QM402() {
    var int QM402_REFUGEEATTACK;
    if ((LOG_GETSTATUS(MIS_QM402)) != (LOG_RUNNING)) {
        return;
    };
    if ((QM402_GOONPATORL) == (1)) {
        if (((NPC_GETDISTTOWP(MIL_4016_WEGAR, MIL_4016_WEGAR.WP)) <= (700)) && ((NPC_GETDISTTOWP(HERO, "SLUMS_HERO_STAND_QM402")) <= (700))) {
            QM402_GOONPATORL = 2;
            HERO.AIVAR[4] = TRUE;
            FF_APPLYONCEEXT(62863, 75, 4);
        };
    };
    if ((QM402_SOUTHERENCUTSCENEENABLE) == (1)) {
        if ((((NPC_GETDISTTOWP(MIL_4016_WEGAR, "PARTM3_QM402_WEIGAR_01")) <= (500)) && ((NPC_GETDISTTOWP(HERO, "PARTM3_QM402_HERO_01")) <= (500))) && ((NPC_ISINSTATE(MIL_4016_WEGAR, 61599)) == (FALSE))) {
            QM402_SOUTHERENCUTSCENEENABLE = 2;
            HERO.AIVAR[4] = TRUE;
            B_STARTOTHERROUTINE(MIL_4016_WEGAR, "QM402_GUIDE_BARRACK_CUTSCENE");
            NPC_REFRESH(MIL_4016_WEGAR);
            QM402_WEIGAR_RTNCHECK = 4;
            FF_APPLYONCEEXT(62867, 75, 4);
        };
    };
    if ((QM402_SOUTHERENCUTSCENEENABLE) == (3)) {
        if ((QM402_HELPEDREFUGEE) == (TRUE)) {
            if ((QM402_REFUGEEATTACK) == (FALSE)) {
                if (((((NPC_GETDISTTOWP(NONE_13598_REFUGEE, "PARTM3_QM402_REFUGEE_01")) <= (500)) || ((NPC_GETDISTTOWP(NONE_13599_REFUGEE, "PARTM3_QM402_REFUGEE_02")) <= (500))) || ((NPC_GETDISTTOWP(NONE_13600_REFUGEE, "PARTM3_QM402_REFUGEE_03")) <= (500))) || ((NPC_GETDISTTOWP(NONE_13601_REFUGEE, "PARTM3_QM402_REFUGEE_04")) <= (500))) {
                    if (((((NPC_ISINSTATE(NONE_13598_REFUGEE, 61599)) == (FALSE)) && ((NPC_ISINSTATE(NONE_13599_REFUGEE, 61599)) == (FALSE))) && ((NPC_ISINSTATE(NONE_13600_REFUGEE, 61599)) == (FALSE))) && ((NPC_ISINSTATE(NONE_13601_REFUGEE, 61599)) == (FALSE))) {
                        PRINTD("Pomagaj�!");
                        QM402_REFUGEEATTACK = TRUE;
                        B_STARTOTHERROUTINE(NONE_13598_REFUGEE, "QM402_FIGHT");
                        NPC_REFRESH(NONE_13598_REFUGEE);
                        B_STARTOTHERROUTINE(NONE_13599_REFUGEE, "QM402_FIGHT");
                        NPC_REFRESH(NONE_13599_REFUGEE);
                        B_STARTOTHERROUTINE(NONE_13600_REFUGEE, "QM402_FIGHT");
                        NPC_REFRESH(NONE_13600_REFUGEE);
                        B_STARTOTHERROUTINE(NONE_13601_REFUGEE, "QM402_FIGHT");
                        NPC_REFRESH(NONE_13601_REFUGEE);
                    };
                };
            };
        };
    };
    if ((QM402_SOUTHERNERFIGHT) == (1)) {
        if ((QM402_SOUTHERNERAREDEAD()) == (TRUE)) {
            QM402_SOUTHERNERFIGHT = 2;
            if ((QM402_HELPEDREFUGEE) == (FALSE)) {
                B_LOGENTRY(TOPIC_QM402, LOG_QM402_SOUTHERNER_V1);
            };
        };
    };
}

