func void EVENTSMANAGER_FAQ001() {
    if ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING)) {
        if ((FAQ001_CHANGESUNDERMDS) == (FALSE)) {
            if ((FAQ001_SUNDERGUIDEUS) == (TRUE)) {
                if ((NPC_GETDISTTOWP(SLD_5002_SUNDER, "VILLAGE_PLACE_15")) <= (325)) {
                    PRINTD("Sunder zmieni³ MDS!");
                    FAQ001_CHANGESUNDERMDS = 1;
                    NPC_CLEARAIQUEUE(SLD_5002_SUNDER);
                    AI_PLAYANI(SLD_5002_SUNDER, "R_VOMIT_SUNDER");
                    AI_WAIT(SLD_5002_SUNDER, 0x3e4ccccd);
                    AI_FUNCTION(SLD_5002_SUNDER, 0xf522);
                };
            };
        };
        if ((FAQ001_MARVINWENTSEARCHBODY) == (TRUE)) {
            if (!(NPC_ISINSTATE(HERO, 0xf09f))) {
                if ((((NPC_GETDISTTOWP(HERO, "PART12_PATH_57")) <= (350)) && ((FAQ001_MARVINFOUNDDEADMEESENGER) == (0))) && ((FAQ001_MARVINFOUNDTRACE) == (0))) {
                    AI_OUTPUT(HERO, HERO, "DIA_Marvin_FoundDeadMessenger_15_01");
                    FAQ001_MARVINFOUNDTRACE = 1;
                };
                if (((NPC_GETDISTTOWP(HERO, "PART12_PATH_59")) <= (450)) && ((FAQ001_MARVINFOUNDDEADMEESENGER) == (0))) {
                    AI_OUTPUT(HERO, HERO, "DIA_Marvin_FoundDeadMessenger_15_02");
                    FAQ001_MARVINWENTSEARCHBODY = 2;
                    FAQ001_MARVINFOUNDDEADMEESENGER = 1;
                    if ((FAQ001_SUNDERGUIDEUS) == (TRUE)) {
                        FAQ001_TELEPORTSUNDER();
                        B_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_FOUNDBODYINFOREST_V1);
                    } else {
                        B_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_FOUNDBODYINFOREST_V2);
                    };
                };
            };
        };
        if ((FAQ001_SUNDERGUIDEUS) == (TRUE)) {
            if (((NPC_GETDISTTOWP(HERO, "PART12_PATH_SUNDER")) <= (450)) && ((FAQ001_MARVINFOUNDDEADMEESENGER) == (1))) {
                B_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_SUNDERMISSING);
                FAQ001_MARVINFOUNDDEADMEESENGER = 2;
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_SUCCESS)) {
        if ((FAQ001_TELEPORTSUNDERTOARAXOS) == (1)) {
            if (((NPC_GETDISTTOWP(HERO, "PARTM1_GUILDHOUSE02_41")) >= (0x1388)) && ((NPC_GETDISTTOWP(HERO, "VILLAGE_PUB_40")) >= (0x1388))) {
                if ((LOG_GETSTATUS(MIS_QA401)) != (LOG_RUNNING)) {
                    FAQ001_TELEPORTSUNDERTOARAXOS = 2;
                    B_STARTOTHERROUTINE(SLD_5002_SUNDER, "ARAXOS");
                    NPC_REFRESH(SLD_5002_SUNDER);
                };
            };
        };
        if ((FAQ001_SPAWNZOMBIECORPSE) == (1)) {
            if ((FAQ001_SPAWNZOMBIECORPSE_DAY) <= ((WLD_GETDAY()) - (1))) {
                PRINTD("Zombie gotowe do zjedzenia twojego mózgu!");
                FAQ001_SPAWNZOMBIECORPSE = 2;
                WLD_INSERTNPC(0xc7d7, "PART12_PATH_61");
                FAQ001_PREPARECORPSES();
            };
        };
    };
}

