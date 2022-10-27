func void EVENTSMANAGER_Q103() {
    if ((LOG_GETSTATUS(MIS_Q103)) != (LOG_RUNNING)) {
        return;
    };
    if ((((NPC_GETDISTTOWP(NONE_1_JORN, "VILLAGE_PLACE_15")) <= (700)) && (!(NPC_ISINSTATE(NONE_1_JORN, 0xf09f)))) && ((Q102_CHANGEJORNRTN_04) == (FALSE))) {
        B_STARTOTHERROUTINE(NONE_1_JORN, "ToSilbachPubWait");
        NPC_REFRESH(NONE_1_JORN);
        Q102_CHANGEJORNRTN_04 = TRUE;
    };
    if ((Q103_VILLAGEDISTANCELIMIT) == (TRUE)) {
        if ((Q103_VILLAGEDISTANCEWARN) == (FALSE)) {
            if (((((NPC_GETDISTTOWP(HERO, "VILLAGE_PATH_37")) >= (0x25e4)) || ((NPC_GETDISTTONPC(HERO, MIL_709_KIPPER)) <= (0x7d0))) || ((NPC_GETDISTTONPC(HERO, MIL_708_DICKON)) <= (0x7d0))) || ((NPC_GETDISTTONPC(HERO, MIL_710_FOLKARD)) <= (0x7d0))) {
                Q103_VILLAGEDISTANCEWARN = 1;
                if ((Q102_JORNCHOSEN) == (TRUE)) {
                    AI_OUTPUT(HERO, HERO, "DIA_Marvin_Q102_VillageTooFar_15_01");
                } else {
                    AI_OUTPUT(HERO, HERO, "DIA_Marvin_Q102_VillageTooFar_15_00");
                };
            };
        } else if ((Q103_VILLAGEDISTANCEWARN) == (1)) {
            if (((((NPC_GETDISTTOWP(HERO, "VILLAGE_PATH_37")) >= (0x28a0)) || ((NPC_GETDISTTONPC(HERO, MIL_709_KIPPER)) <= (0x578))) || ((NPC_GETDISTTONPC(HERO, MIL_708_DICKON)) <= (0x578))) || ((NPC_GETDISTTONPC(HERO, MIL_710_FOLKARD)) <= (0x578))) {
                Q103_VILLAGEDISTANCEWARN = 2;
                FADESCREENTOBLACKF(1, 0xf25e, 1000);
            };
        };
    };
}

