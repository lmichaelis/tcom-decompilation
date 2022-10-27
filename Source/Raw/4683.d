func void EVENTSMANAGER_Q102() {
    if ((LOG_GETSTATUS(MIS_Q102)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q102_STOPSCALETIME) == (FALSE)) {
        if (WLD_ISTIME(2, 0, 2, 10)) {
            PRINTD("Zatrzymaj skalowanie czasu");
            Q102_STOPSCALETIME = TRUE;
            SETHOLDTIME(TRUE);
        };
    };
    if (Q102_JORNCHOSEN) {
        if ((Q102_FIRSTTIMEINSILBACH) == (FALSE)) {
            if (((NPC_GETDISTTOWP(HERO, "PART13_PATH_02")) <= (500)) && ((NPC_ISINSTATE(NONE_1_JORN, 0xf09f)) == (FALSE))) {
                MUSIC_OVERRIDETRACK(0x559f);
                Q102_JORNDISTANCELIMIT = FALSE;
                B_LOGENTRY(TOPIC_Q102, LOG_Q102_REACHSILBACH);
                LOG_SETSTATUS(_@(MIS_Q102), TOPIC_Q102, LOG_SUCCESS);
                Q102_FIRSTTIMEINSILBACH = TRUE;
                B_STARTOTHERROUTINE(NONE_1_JORN, "Q102_TOSILBACHWAIT");
                NPC_REFRESH(NONE_1_JORN);
            };
        };
        if ((Q102_CHANGEJORNRTN_02) == (1)) {
            if (((NPC_ISDEAD(BLOODFLYJORN01)) && (NPC_ISDEAD(BLOODFLYJORN02))) && (NPC_ISDEAD(BLOODFLYJORN03))) {
                NPC_CHANGEARMOR(NONE_1_JORN, 0x8af6);
                NPC_REMOVEINVITEMS(NONE_1_JORN, 0x8af5, NPC_HASITEMS(NONE_1_JORN, 0x8af5));
                Q102_CHANGEJORNRTN_02 = 2;
                PRINTD("Jorn jest ranny!");
            };
        };
        if ((Q102_JORNRUINEDHOUSEAUTOTALK) == (FALSE)) {
            if ((NPC_GETDISTTOWP(NONE_1_JORN, "PART_13_HUT_02")) <= (500)) {
                NPC_SETREFUSETALK(NONE_1_JORN, 20);
                Q102_JORNRUINEDHOUSEAUTOTALK = TRUE;
            };
        };
    };
    if (Q102_FABIOCHOSEN) {
        if ((Q102_FABIO_CHANGERTNAFTERMOLERAT) == (FALSE)) {
            if (((NPC_ISDEAD(CAVE_MOLERAT_01)) && (NPC_ISDEAD(CAVE_MOLERAT_02))) && (NPC_ISDEAD(CAVE_MOLERAT_03))) {
                if ((((NPC_ISINSTATE(NONE_100007_RUPERT, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(NONE_100012_KAZEEM, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(NONE_5_FABIO, 0xf09f)) == (FALSE))) {
                    Q102_FABIOTEAM_CHANGERTN_CAVE_FABIO();
                    Q102_FABIOTEAM_CHANGERTN_REST();
                    Q102_FABIO_CHANGERTNAFTERMOLERAT = TRUE;
                    PRINTD("Zmiana RTN!");
                };
            };
        } else if ((Q102_FABIO_FOUNDINCAVEMAGIC) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "TELEPORT_LURKER")) <= (500)) {
                Q102_FABIO_FOUNDINCAVEMAGIC = TRUE;
                B_LOGENTRY(TOPIC_Q102, LOG_Q102_FABIO_FOUNDMAGICCIRCLE);
            };
        };
        if ((FABIOKAZEEMSMALLTALK2) == (FALSE)) {
            if (((KAZEEMGATHERWOOD) == (2)) || ((Q102_FABIOGATHERWOOD) == (2))) {
                if ((((!(NPC_ISINSTATE(NONE_5_FABIO, 0xf09f))) && (!(NPC_ISINSTATE(NONE_100012_KAZEEM, 0xf09f)))) && (!(NPC_ISINSTATE(HERO, 0xf09f)))) && ((NPC_GETDISTTONPC(NONE_5_FABIO, NONE_100012_KAZEEM)) <= (700))) {
                    PRINTD("Kazeem/Fabio wróci³!");
                    FABIOKAZEEMSMALLTALK2 = TRUE;
                    if ((KAZEEMGATHERWOOD) == (2)) {
                        B_STARTOTHERROUTINE(NONE_100012_KAZEEM, "Cave");
                        NPC_REFRESH(NONE_100012_KAZEEM);
                    } else if ((Q102_FABIOGATHERWOOD) == (2)) {
                        B_STARTOTHERROUTINE(NONE_5_FABIO, "Cave");
                        NPC_REFRESH(NONE_5_FABIO);
                    };
                };
            };
        };
        if ((KAZEEMGATHERWOOD) == (1)) {
            if (((NPC_GETDISTTOWP(NONE_100012_KAZEEM, "PART_13_KAZEEM_GATHER")) <= (300)) && ((NPC_ISINSTATE(NONE_100012_KAZEEM, 0xf09f)) == (FALSE))) {
                PRINTD("Kazeem comeback");
                KAZEEMGATHERWOOD = 2;
                B_STARTOTHERROUTINE(NONE_100012_KAZEEM, "Q102_COMEBACK");
                NPC_REFRESH(NONE_100012_KAZEEM);
            };
        };
        if ((Q102_FABIOGATHERWOOD) == (1)) {
            if (((NPC_GETDISTTOWP(NONE_5_FABIO, "PART_13_KAZEEM_GATHER")) <= (300)) && ((NPC_ISINSTATE(NONE_5_FABIO, 0xf09f)) == (FALSE))) {
                PRINTD("Fabio comeback");
                Q102_FABIOGATHERWOOD = 2;
                B_STARTOTHERROUTINE(NONE_5_FABIO, "Q102_COMEBACK");
                NPC_REFRESH(NONE_5_FABIO);
            };
        };
        if (((Q102_RUPERTDISTANCELIMIT) == (TRUE)) && ((HERO.AIVAR[4]) == (FALSE))) {
            if ((Q102_RUPERTDISTANCEWARN) == (FALSE)) {
                if ((NPC_GETDISTTONPC(HERO, NONE_100007_RUPERT)) >= (0xbb8)) {
                    Q102_RUPERTDISTANCEWARN = 1;
                    AI_OUTPUT(HERO, HERO, "DIA_Marvin_Q102_RupertTooFar_15_00");
                };
            } else if ((Q102_RUPERTDISTANCEWARN) == (1)) {
                if ((NPC_GETDISTTONPC(HERO, NONE_100007_RUPERT)) >= (0xdac)) {
                    Q102_RUPERTDISTANCEWARN = 2;
                    FADESCREENTOBLACKF(1, 0xf25b, 1000);
                };
            };
        };
        if ((FABIOTOSILBACH) == (TRUE)) {
            if ((Q102_STOPSCALETIME_FABIOWAY) == (FALSE)) {
                if (WLD_ISTIME(5, 0, 5, 10)) {
                    PRINTD("Zatrzymaj skalowanie czasu");
                    Q102_STOPSCALETIME_FABIOWAY = TRUE;
                    SETHOLDTIME(TRUE);
                };
            };
        };
    };
}

var int EVENTSMANAGER_Q102.Q102_STOPSCALETIME = 0;
var int EVENTSMANAGER_Q102.Q102_STOPSCALETIME_FABIOWAY = 0;
