var int SQ221_PICKAXEROCKS_01;
var int SQ221_PICKAXEROCKS_02;
var int SQ221_PICKAXEROCKS_03;
var int SQ221_PICKAXEROCKS_04;
var int SQ221_PICKAXEROCKS_05;
func void PICKAXEROCKS_WORK() {
    SQ221_ROCKS_COUNT = (SQ221_ROCKS_COUNT) + (1);
    FF_APPLYONCEEXTGT(48964, 0, -(1));
}

func void PICKAXEROCKS_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART13_SQ221_ROCK_01")) {
            if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
                if ((SQ221_MAIK_WORK) == (1)) {
                    SQ221_PICKAXEROCKS_01 = 1;
                    PICKAXEROCKS_WORK();
                };
            };
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART13_SQ221_ROCK_02")) {
            if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
                if ((SQ221_MAIK_WORK) == (1)) {
                    SQ221_PICKAXEROCKS_02 = 1;
                    PICKAXEROCKS_WORK();
                };
            };
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART13_SQ221_ROCK_03")) {
            if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
                if ((SQ221_MAIK_WORK) == (1)) {
                    SQ221_PICKAXEROCKS_03 = 1;
                    PICKAXEROCKS_WORK();
                };
            };
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART13_SQ221_ROCK_04")) {
            if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
                if ((SQ221_MAIK_WORK) == (1)) {
                    SQ221_PICKAXEROCKS_04 = 1;
                    PICKAXEROCKS_WORK();
                };
            };
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART13_SQ221_ROCK_05")) {
            if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
                if ((SQ221_MAIK_WORK) == (1)) {
                    SQ221_PICKAXEROCKS_05 = 1;
                    PICKAXEROCKS_WORK();
                };
            };
        };
    };
}

func void PICKAXEROCKS_S0() {
    HERO.AIVAR[4] = FALSE;
    B_ENDPRODUCTIONDIALOG();
}

func void SQ221_SOUND() {
    SND_PLAY("ROCKS_KICK_01");
    SND_PLAY("ROCKS_FALL_01");
    SND_PLAY("ROCKS_FALL_02");
}

func void SQ221_ROCK_REMOVE() {
    var ZCMOVER MOVER5;
    var int MOVPTR5;
    var int SQ221_PICKAXEROCKS_05_COUNT;
    var int MOVPTR3;
    var ZCMOVER MOVER3;
    var ZCMOVER MOVER1;
    var int SQ221_PICKAXEROCKS_02_COUNT;
    var int MOVPTR2;
    var int SQ221_PICKAXEROCKS_01_COUNT;
    var ZCMOVER MOVER4;
    var ZCMOVER MOVER2;
    var int MOVPTR1;
    var int MOVPTR4;
    var int SQ221_PICKAXEROCKS_03_COUNT;
    var int SQ221_PICKAXEROCKS_04_COUNT;
    if ((SQ221_PICKAXEROCKS_01) == (1)) {
        if ((SQ221_PICKAXEROCKS_01_COUNT) == (0)) {
            PRINTD("Rozpoczynam - SQ221_ROCK_REMOVE");
            MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ221_MOVER_ROCK_01");
            MOVER1 = MEM_PTRTOINST(MOVPTR1);
            CHANGEVOBCOLLISION("SQ221_ROCK_01", FALSE, FALSE, FALSE, TRUE);
            WLD_SENDTRIGGER("SQ221_MOVER_ROCK_01");
            SQ221_SOUND();
            SQ221_PICKAXEROCKS_01_COUNT = 1;
        } else if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
            PRINTD("Skończyłem - SQ221_ROCK_REMOVE");
            CHANGEVOBCOLLISION("SQ221_ROCK_01", TRUE, TRUE, TRUE, TRUE);
            FF_REMOVE(48964);
            SQ221_PICKAXEROCKS_01_COUNT = 0;
            SQ221_PICKAXEROCKS_01 = 2;
        };
    };
    if ((SQ221_PICKAXEROCKS_02) == (1)) {
        if ((SQ221_PICKAXEROCKS_02_COUNT) == (0)) {
            PRINTD("Rozpoczynam - SQ221_PICKAXEROCKS_02_Count");
            MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ221_MOVER_ROCK_02");
            MOVER2 = MEM_PTRTOINST(MOVPTR2);
            CHANGEVOBCOLLISION("SQ221_ROCK_02", FALSE, FALSE, FALSE, TRUE);
            WLD_SENDTRIGGER("SQ221_MOVER_ROCK_02");
            SQ221_SOUND();
            SQ221_PICKAXEROCKS_02_COUNT = 1;
        } else if (((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
            PRINTD("Skończyłem - SQ221_PICKAXEROCKS_02_Count");
            CHANGEVOBCOLLISION("SQ221_ROCK_02", TRUE, TRUE, TRUE, TRUE);
            FF_REMOVE(48964);
            SQ221_PICKAXEROCKS_02_COUNT = 0;
            SQ221_PICKAXEROCKS_02 = 2;
        };
    };
    if ((SQ221_PICKAXEROCKS_03) == (1)) {
        if ((SQ221_PICKAXEROCKS_03_COUNT) == (0)) {
            PRINTD("Rozpoczynam - SQ221_ROCK_REMOVE");
            MOVPTR3 = MEM_SEARCHVOBBYNAME("SQ221_MOVER_ROCK_03");
            MOVER3 = MEM_PTRTOINST(MOVPTR3);
            CHANGEVOBCOLLISION("SQ221_ROCK_03", FALSE, FALSE, FALSE, TRUE);
            WLD_SENDTRIGGER("SQ221_MOVER_ROCK_03");
            SQ221_SOUND();
            SQ221_PICKAXEROCKS_03_COUNT = 1;
        } else if (((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
            PRINTD("Skończyłem - SQ221_ROCK_REMOVE");
            CHANGEVOBCOLLISION("SQ221_ROCK_03", TRUE, TRUE, TRUE, TRUE);
            FF_REMOVE(48964);
            SQ221_PICKAXEROCKS_03_COUNT = 0;
            SQ221_PICKAXEROCKS_03 = 2;
        };
    };
    if ((SQ221_PICKAXEROCKS_04) == (1)) {
        if ((SQ221_PICKAXEROCKS_04_COUNT) == (0)) {
            PRINTD("Rozpoczynam - SQ221_ROCK_REMOVE");
            MOVPTR4 = MEM_SEARCHVOBBYNAME("SQ221_MOVER_ROCK_04");
            MOVER4 = MEM_PTRTOINST(MOVPTR4);
            CHANGEVOBCOLLISION("SQ221_ROCK_04", FALSE, FALSE, FALSE, TRUE);
            WLD_SENDTRIGGER("SQ221_MOVER_ROCK_04");
            SQ221_SOUND();
            SQ221_PICKAXEROCKS_04_COUNT = 1;
        } else if (((MOVER4.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
            PRINTD("Skończyłem - SQ221_ROCK_REMOVE");
            CHANGEVOBCOLLISION("SQ221_ROCK_04", TRUE, TRUE, TRUE, TRUE);
            FF_REMOVE(48964);
            SQ221_PICKAXEROCKS_04_COUNT = 0;
            SQ221_PICKAXEROCKS_04 = 2;
        };
    };
    if ((SQ221_PICKAXEROCKS_05) == (1)) {
        if ((SQ221_PICKAXEROCKS_05_COUNT) == (0)) {
            PRINTD("Rozpoczynam - SQ221_ROCK_REMOVE");
            MOVPTR5 = MEM_SEARCHVOBBYNAME("SQ221_MOVER_ROCK_05");
            MOVER5 = MEM_PTRTOINST(MOVPTR5);
            CHANGEVOBCOLLISION("SQ221_ROCK_05", FALSE, FALSE, FALSE, TRUE);
            WLD_SENDTRIGGER("SQ221_MOVER_ROCK_05");
            SQ221_SOUND();
            SQ221_PICKAXEROCKS_05_COUNT = 1;
        } else if (((MOVER5.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER5.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
            PRINTD("Skończyłem - SQ221_ROCK_REMOVE");
            CHANGEVOBCOLLISION("SQ221_ROCK_05", TRUE, TRUE, TRUE, TRUE);
            FF_REMOVE(48964);
            SQ221_PICKAXEROCKS_05_COUNT = 0;
            SQ221_PICKAXEROCKS_05 = 2;
        };
    };
}

