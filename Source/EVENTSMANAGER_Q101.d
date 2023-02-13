func void EVENTSMANAGER_Q101() {
    var int Q101_STOPSCALETIME;
    if ((LOG_GETSTATUS(MIS_Q101)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q101_STOPSCALETIME) == (FALSE)) {
        if (WLD_ISTIME(2, 0, 2, 10)) {
            PRINTD("Zatrzymaj skalowanie czasu");
            Q101_STOPSCALETIME = TRUE;
            SETHOLDTIME(TRUE);
        };
    };
    if (NPC_KNOWSINFO(HERO, 91578)) {
        if ((Q101_SMUGGLER_IDEA) == (0)) {
            if ((NPC_HASITEMS(HERO, 33654)) >= (1)) {
                Q101_SMUGGLER_IDEA = 1;
                B_LOGENTRY(TOPIC_Q101, LOG_Q101_SMUGGLER_IDEA);
            };
        };
    };
    if ((Q101_CAPTAIN_CUTSCENEENABLE) == (0)) {
        if ((Q101_VRAZKACHEST) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "SHIP_BEGINNING_AMULET")) <= (350)) {
                Q101_VRAZKACHEST = 2;
                SND_PLAY("OW_ShipWrekOrBridge_A3");
                B_LOGENTRY(TOPIC_Q101, LOG_Q101_VRAZKA_SHIP);
                WLD_SENDTRIGGER("Q101_SHIP_MOVER_AMULET");
            };
        };
    };
    if ((Q101_CAPTAIN_CUTSCENEENABLE) == (1)) {
        Q101_CAPTAIN_CUTSCENEENABLE = 2;
        HERO.AIVAR[4] = TRUE;
        FF_APPLYONCEEXT(61980, 75, 4);
    };
    if ((Q101_CAPTAIN_CUTSCENEENABLE) == (3)) {
        Q101_CAPTAIN_CUTSCENEENABLE = 4;
        HERO.AIVAR[4] = TRUE;
        FF_APPLYONCEEXT(61981, 1000, 4);
    };
    if ((Q101_CAPTAIN_CUTSCENEENABLE) == (5)) {
        HERO.AIVAR[4] = TRUE;
        FF_APPLYONCEEXT(61985, 75, 6);
        Q101_CAPTAIN_CUTSCENEENABLE = 6;
    };
    if ((Q101_CAPTAIN_CUTSCENEENABLE) == (6)) {
        if ((C_BODYSTATECONTAINS(NONE_7_RUPERT, BS_SWIM)) || (C_BODYSTATECONTAINS(NONE_7_RUPERT, BS_DIVE))) {
            WLD_SENDTRIGGER("Q101_SND_JUMPWATER");
            Q101_CAPTAIN_CUTSCENEENABLE = 7;
            Q101_SHIP_FINAL_CAPTAIN();
        };
    };
    if ((Q101_CAPTAIN_CUTSCENEENABLE) == (7)) {
        if ((C_BODYSTATECONTAINS(NONE_1_JORN, BS_SWIM)) || (C_BODYSTATECONTAINS(NONE_1_JORN, BS_DIVE))) {
            WLD_SENDTRIGGER("Q101_SND_JUMPWATER");
            Q101_CAPTAIN_CUTSCENEENABLE = 8;
            Q101_SHIP_FINAL_MARVIN();
        };
    };
    if ((Q101_CAPTAIN_CUTSCENEENABLE) == (9)) {
        HERO.AIVAR[4] = TRUE;
        FF_APPLYONCEEXT(62001, 75, 4);
        Q101_CAPTAIN_CUTSCENEENABLE = 10;
    };
    if ((Q101_CAPTAIN_CUTSCENEENABLE) == (10)) {
        if ((C_BODYSTATECONTAINS(HERO, BS_SWIM)) || (C_BODYSTATECONTAINS(HERO, BS_DIVE))) {
            WLD_SENDTRIGGER("Q101_SND_JUMPWATER");
            PRINTD("Test");
            Q101_CAPTAIN_CUTSCENEENABLE = 11;
            FF_APPLYONCEEXT(62004, 75, 4);
            Q101_SHIPT_BLOCKPATH();
        };
    };
    if ((Q101_CAPTAIN_CUTSCENEENABLE) == (11)) {
        if (((((NPC_GETDISTTOWP(HERO, "START_KM")) >= (9500)) || ((NPC_GETDISTTOWP(HERO, "Q101_BLOCKPATH_01")) <= (1250))) || ((NPC_GETDISTTOWP(HERO, "Q101_BLOCKPATH_02")) <= (1250))) || ((NPC_GETDISTTOWP(HERO, "Q101_BLOCKPATH_03")) <= (1250))) {
            Q101_CAPTAIN_CUTSCENEENABLE = 12;
            PLAYVIDEO("FishFood.BIK");
            EXITSESSION();
        };
    };
}

