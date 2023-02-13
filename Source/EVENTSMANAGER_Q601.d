func void EVENTSMANAGER_Q601() {
    if ((LOG_GETSTATUS(MIS_Q601)) != (LOG_RUNNING)) {
        return;
    };
    if (((Q601_CHANGERTNNOTGER) == (1)) && ((NPC_ISINSTATE(KDW_215_NOTGER, 61599)) == (FALSE))) {
        PRINTD("Nadchodzi Notger");
        Q601_CHANGERTNNOTGER = 2;
        AI_SETWALKMODE(KDW_215_NOTGER, NPC_WALK);
        AI_GOTOWP(KDW_215_NOTGER, "PART8_MONASTERY_MAGEROOM2_02");
        B_STARTOTHERROUTINE(KDW_215_NOTGER, "Q601_INGOLFHOUSE");
        NPC_REFRESH(KDW_215_NOTGER);
    };
    if ((Q601_MARVINTELEPORT) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, KDW_216_INGOLF)) >= (3800)) {
            Q601_MARVINTELEPORT = 2;
            AI_FUNCTION(HERO, 94181);
        };
    };
}

func void Q601_MARVINBRINGBACK() {
    FADESCREENTOBLACKF(1, 94182, 1000);
}

func void Q601_MARVINBRINGBACK_FADESCREEN() {
    Q601_MARVINTELEPORT = 1;
    TELEPORTNPCTOWP(1819, "PART15_PATH_57");
    TELEPORTNPCTOWP(56676, "PART15_PATH_58");
    AI_TELEPORTALWAYS(KDW_216_INGOLF, "PART15_PATH_58", TRUE);
    FADESCREENFROMBLACK(1);
}

