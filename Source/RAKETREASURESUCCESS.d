func void RAKETREASURESUCCESS(var C_ITEM ITM) {
    WLD_PLAYEFFECT("spellFX_ItemAusbuddeln", ITM, ITM, 0, 0, 0, FALSE);
    B_SAY_OVERLAY(SELF, SELF, "$FOUNDTREASURE");
}

func void B_ARCHOLOSTREASURES_S1() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) {
        if ((NPC_GETDISTTOWP(HERO, "PART15_MORITZ_TREASURE_01")) < (1000)) {
            MEM_CALLBYSTRING("PLAYER_PLUNDER_IS_EMPTY");
            MORITZ_SQ304_RAKEPLACECOUNTER += 1;
            if ((MORITZ_SQ304_RAKEPLACECOUNTER) == (3)) {
                WLD_SENDTRIGGER("MORITZ_BURRIED_TREASURE_01");
                SQ304_MORITZ_RTNCHECK = 2;
                NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "Treasure01Plunder");
                B_LOGENTRY(TOPIC_SQ304, LOG_SQ304_NOTHINGHERE);
            };
        } else if ((NPC_GETDISTTOWP(HERO, "PART13_MORITZ_TREASURE_01")) < (1000)) {
            MEM_CALLBYSTRING("PLAYER_PLUNDER_IS_EMPTY");
            MORITZ_SQ304_RAKEPLACECOUNTER += 1;
            if ((MORITZ_SQ304_RAKEPLACECOUNTER) == (6)) {
                WLD_SENDTRIGGER("MORITZ_BURRIED_TREASURE_02");
                B_LOGENTRY(TOPIC_SQ304, LOG_SQ304_NOTHINGHEREAGAIN);
            };
        } else if ((NPC_GETDISTTOWP(HERO, "PART11_PATH_124")) < (1000)) {
            MEM_CALLBYSTRING("PLAYER_PLUNDER_IS_EMPTY");
            MORITZ_SQ304_RAKEPLACECOUNTER += 1;
            if ((MORITZ_SQ304_RAKEPLACECOUNTER) == (9)) {
                WLD_SENDTRIGGER("MORITZ_BURRIED_TREASURE_03");
                B_LOGENTRY(TOPIC_SQ304, LOG_SQ304_NOTREASURE);
            };
        } else if ((NPC_GETDISTTOWP(HERO, "PART11_MORITZ_REAL_TREASURE")) < (1000)) {
            RAKETREASURESUCCESS(ITSE_GOLDPOCKET100);
            FADESCREENTOBLACKF(1, 32195, 1000);
        };
    };
}

func void TREASURE_GOLDCHESTMOVER() {
    FF_APPLYONCEEXTGT(32196, 0, -(1));
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(1);
}

func void CHANGEGOLDCHESTTREASURE() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int CHANGEGOLDCHESTCOLISION;
    if ((CHANGEGOLDCHESTCOLISION) == (0)) {
        PRINTD("Rozpoczynam - ChangeGoldChestTreasure");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("MORITZ_BURRIED_TREASURE_REAL");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("MORITZ_BURRIED_TREASURE_REAL_CHEST");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("SQ304_SIGN_X", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("GOLDCHEST_TREASURE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("MORITZ_BURRIED_TREASURE_REAL");
        WLD_SENDTRIGGER("MORITZ_BURRIED_TREASURE_REAL_CHEST");
        CHANGEGOLDCHESTCOLISION = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - ChangeGoldChestTreasure");
        CHANGEVOBCOLLISION("SQ304_SIGN_X", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("GOLDCHEST_TREASURE", TRUE, TRUE, TRUE, TRUE);
        SQ304_DAYCHECK = TRUE;
        SQ304_DAY = WLD_GETDAY();
        FF_REMOVE(32196);
        CHANGEGOLDCHESTCOLISION = 0;
    };
}

