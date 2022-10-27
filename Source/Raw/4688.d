func void EVENTSMANAGER_Q108() {
    if ((LOG_GETSTATUS(MIS_Q108)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q108_STARTMEETINGTRIALOG) == (FALSE)) {
        if (((NPC_GETDISTTOWP(NONE_1_JORN, "VILLAGE_PATH_38")) <= (750)) && ((NPC_GETDISTTOWP(BAU_701_KURT, "VILLAGE_Q108_JORN")) <= (750))) {
            if (((NPC_GETDISTTONPC(HERO, NONE_1_JORN)) <= (500)) || ((NPC_GETDISTTONPC(HERO, BAU_701_KURT)) <= (500))) {
                if ((((NPC_ISINSTATE(NONE_1_JORN, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(BAU_701_KURT, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(NONE_100007_RUPERT, 0xf09f)) == (FALSE))) {
                    Q108_STARTMEETINGTRIALOG = TRUE;
                    FF_APPLYONCEEXT(0xf277, 75, 4);
                };
            };
        };
    };
    if ((Q108_GOTALLPLANTS) == (FALSE)) {
        if (NPC_KNOWSINFO(HERO, 0x136d2)) {
            if (Q108_IGOTPLANTS(HERO)) {
                Q108_GOTALLPLANTS = TRUE;
                B_LOGENTRY(TOPIC_Q108, LOG_Q108_RIORDIAN_GOTPLANTS);
            };
        };
    };
    if (((RESERVED_VAR_INT_11) == (1)) && ((NPC_ISINSTATE(BAU_701_KURT, 0xf09f)) == (FALSE))) {
        if (NPC_ISINROUTINE(BAU_701_KURT, 0xe0ad)) {
            RESERVED_VAR_INT_11 = 2;
            NPC_EXCHANGEROUTINE(BAU_701_KURT, RESERVED_CONST_STRING_56);
        } else {
            RESERVED_VAR_INT_11 = 3;
            B_STARTOTHERROUTINE(BAU_701_KURT, RESERVED_CONST_STRING_56);
            NPC_REFRESH(BAU_701_KURT);
        };
    };
}

var int EVENTSMANAGER_Q108.Q108_STARTMEETINGTRIALOG = 0;
