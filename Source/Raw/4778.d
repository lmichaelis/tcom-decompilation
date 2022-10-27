func void EVENTSMANAGER_SQ227() {
    if ((LOG_GETSTATUS(MIS_SQ227)) == (LOG_RUNNING)) {
        if ((SQ227_EZEKIELWORK) == (1)) {
            if (((SQ227_EZEKIELWORK_DAY) <= ((WLD_GETDAY()) - (2))) && ((NPC_ISINSTATE(NONE_3_EZEKIEL, 0xf09f)) == (FALSE))) {
                SQ227_EZEKIELWORK = 2;
                B_STARTOTHERROUTINE(NONE_3_EZEKIEL, "SQ227_WAITFORMARVIN");
                NPC_REFRESH(NONE_3_EZEKIEL);
                TELEPORTNPCTOWP(0xc924, NONE_3_EZEKIEL.WP);
                PRINTD("Ezekiel czeka przed karczm¹");
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ227)) == (LOG_SUCCESS)) {
        if ((SQ227_EZEKIELMARKET) == (1)) {
            if ((((SQ227_EZEKIELWORK_DAY) <= ((WLD_GETDAY()) - (1))) && ((NPC_GETDISTTONPC(HERO, NONE_3_EZEKIEL)) >= (0xbb8))) && ((NPC_ISINSTATE(NONE_3_EZEKIEL, 0xf09f)) == (FALSE))) {
                SQ227_EZEKIELMARKET = 2;
                FF_APPLYONCEEXTGT(0xf4a5, 0, -(1));
                B_STARTOTHERROUTINE(NONE_3_EZEKIEL, "TRADE");
                NPC_REFRESH(NONE_3_EZEKIEL);
                TELEPORTNPCTOWP(0xc924, NONE_3_EZEKIEL.WP);
                SQ227_REMOVEVEIT();
            };
        };
        if ((SQ227_VEITMARKET) == (1)) {
            if ((((SQ227_VEITMARKET_DAY) <= ((WLD_GETDAY()) - (1))) && ((NPC_GETDISTTONPC(HERO, NONE_11006_VEIT)) >= (0xbb8))) && ((NPC_ISINSTATE(NONE_11006_VEIT, 0xf09f)) == (FALSE))) {
                SQ227_VEITMARKET = 2;
                FF_APPLYONCEEXTGT(0xf4aa, 0, -(1));
                B_STARTOTHERROUTINE(NONE_11006_VEIT, "CITY");
                NPC_REFRESH(NONE_11006_VEIT);
                TELEPORTNPCTOWP(0xe152, NONE_11006_VEIT.WP);
                NONE_11006_VEIT.FLAGS = 2;
                SQ227_VEITMARKETAMBIENT = TRUE;
            };
        };
    };
}

