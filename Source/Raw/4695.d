func void EVENTSMANAGER_Q207() {
    if (((LOG_GETSTATUS(MIS_Q207)) != (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q205)) != (LOG_SUCCESS))) {
        return;
    };
    if ((Q207_GONZALORESULT) == (2)) {
        if (((MOB_HASITEMS("WITHOUTRACE_VINEYARD_CHEST_01", 0x8e09)) >= (10)) && ((Q207_EMPTYCHESTCHECK01) == (FALSE))) {
            PRINTD("Skrzynka #1 ma itemy!");
            B_LOGENTRY(TOPIC_Q207, LOG_Q207_GRAPECHEST);
            Q207_EMPTYCHESTCHECK01 = TRUE;
        };
        if ((Q207_EMPTYCHESTCHECK02) == (FALSE)) {
            if (((MOB_HASITEMS("WITHOUTRACE_VINEYARD_CHEST_02", 0x911b)) >= (2)) || ((MOB_HASITEMS("SQ206_WOODCHEST", 0x911b)) >= (2))) {
                if ((NPC_ISINSTATE(BAU_902_SOREN, 0xf09f)) == (FALSE)) {
                    PRINTD("Skrzynka #2 ma itemy!");
                    B_LOGENTRY(TOPIC_Q207, LOG_Q207_VINECHEST);
                    B_STARTOTHERROUTINE(BAU_902_SOREN, "GQ001");
                    NPC_REFRESH(BAU_902_SOREN);
                    Q207_EMPTYCHESTCHECK02 = TRUE;
                };
            };
        };
        if ((MOB_HASITEMS("WITHOUTRACE_VINEYARD_CHEST_01", 0x8e09)) >= (10)) {
            if (((MOB_HASITEMS("WITHOUTRACE_VINEYARD_CHEST_02", 0x911b)) >= (2)) || ((MOB_HASITEMS("SQ206_WOODCHEST", 0x911b)) >= (2))) {
                PRINTD("Wszystkie skrzynie maj¹ przedmioty!");
                B_LOGENTRY(TOPIC_Q207, LOG_Q207_ALLJOBDONE);
                Q207_GONZALORESULT = 4;
            };
        };
    };
    if ((Q207_GONZALOGUIDE) == (3)) {
        if ((NPC_GETDISTTOWP(HERO, "PART15_WITHOUTTRACE_GONZALOCUTSCENE_HERO")) <= (250)) {
            Q207_GONZALOGUIDE = 4;
            CUTSCENE_START(0x16898);
        };
    };
    if ((Q207_GONZALOGUIDE) == (4)) {
        if (((Q207_MARVINMOLERATREACTION) == (FALSE)) && ((NPC_GETDISTTOWP(HERO, "PART15_PATH_233")) <= (500))) {
            AI_OUTPUT(HERO, HERO, "DIA_Marvin_GQ001_DeadMonsters_15_00");
            Q207_MARVINMOLERATREACTION = TRUE;
        };
        if (((Q207_MARVINWARANREACTION) == (FALSE)) && ((NPC_GETDISTTOWP(HERO, "PART17_WITHOUTTRACE_DEADWARAN")) <= (750))) {
            AI_OUTPUT(HERO, HERO, "DIA_Marvin_GQ001_DeadMonsters_15_01");
            Q207_MARVINWARANREACTION = TRUE;
        };
        if (((Q207_MARVINSWAMPSHARKREACTION) == (FALSE)) && ((NPC_GETDISTTOWP(HERO, "PART17_WITHOUTTRACE_DEADSWAMPSHARK")) <= (750))) {
            AI_OUTPUT(HERO, HERO, "DIA_Marvin_GQ001_DeadMonsters_15_02");
            Q207_MARVINSWAMPSHARKREACTION = TRUE;
        };
    };
}

