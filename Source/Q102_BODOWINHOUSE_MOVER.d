func void Q102_BODOWINHOUSE_MOVER() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int Q102_BODOWINDOORCOLLISION;
    if ((Q102_BODOWINDOORCOLLISION) == (0)) {
        PRINTD("Rozpoczynam - Q102_BodowinHouse_Mover");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_BODOWIN_DOOR_MOVER_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KM_BODOWIN_DOOR_MOVER_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("KM_BODOWINDOOR_PERMCLOSE", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KM_BODOWINDOOR_PERMOPEN", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_BODOWIN_DOOR_MOVER_01");
        WLD_SENDTRIGGER("KM_BODOWIN_DOOR_MOVER_02");
        Q102_BODOWINDOORCOLLISION = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - Q102_BodowinHouse_Mover");
        CHANGEVOBCOLLISION("KM_BODOWINDOOR_PERMCLOSE", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KM_BODOWINDOOR_PERMOPEN", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62027);
        Q102_BODOWINDOORCOLLISION = 0;
    };
}

func void Q102_BLOCKSILBACH() {
    WLD_SENDTRIGGER("VILLAGE_DOOR_01");
    WLD_SENDTRIGGER("VILLAGE_DOOR_02");
    WLD_SENDTRIGGER("VILLAGE_DOOR_03");
    WLD_SENDTRIGGER("VILLAGE_DOOR_04");
    WLD_SENDTRIGGER("VILLAGE_DOOR_05");
    WLD_SENDTRIGGER("VILLAGE_DOOR_06");
    WLD_SENDTRIGGER("VILLAGE_DOOR_07");
    WLD_SENDTRIGGER("VILLAGE_DOOR_08");
    WLD_SENDTRIGGER("VILLAGE_DOOR_09");
    WLD_SENDTRIGGER("VILLAGE_DOOR_10");
    WLD_SENDTRIGGER("VILLAGE_DOOR_11");
    WLD_SENDTRIGGER("VILLAGE_DOOR_12");
    WLD_SENDTRIGGER("VILLAGE_DOOR_13");
    WLD_SENDTRIGGER("VILLAGE_DOOR_14");
    WLD_SENDTRIGGER("VILLAGE_DOOR_15");
    WLD_SENDTRIGGER("VILLAGE_DOOR_16");
    WLD_SENDTRIGGER("VILLAGE_DOOR_17");
    WLD_SENDTRIGGER("VILLAGE_DOOR_18");
    WLD_SENDTRIGGER("VILLAGE_DOOR_19");
    WLD_SENDTRIGGER("VILLAGE_DOOR_20");
    WLD_SENDTRIGGER("VILLAGE_DOOR_21");
    B_STARTOTHERROUTINE(BAU_713_OSVALD, TOT);
    B_STARTOTHERROUTINE(BAU_714_REMY, TOT);
    B_STARTOTHERROUTINE(NONE_11006_VEIT, TOT);
    B_STARTOTHERROUTINE(BAU_715_HEREFORD, TOT);
    B_STARTOTHERROUTINE(BAU_11008_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_716_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11010_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11300_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11011_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11012_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_717_FINJA, TOT);
    B_STARTOTHERROUTINE(BAU_11015_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11016_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11017_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_718_JENS, TOT);
    B_STARTOTHERROUTINE(BAU_11019_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_719_BAKER, TOT);
    B_STARTOTHERROUTINE(BAU_720_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_721_SEVERIN, TOT);
    B_STARTOTHERROUTINE(BAU_11024_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11025_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11026_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11027_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11028_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_711_THORSTEN, TOT);
    B_STARTOTHERROUTINE(BAU_705_GABRIEN, TOT);
    B_STARTOTHERROUTINE(BAU_11031_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11032_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11033_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11035_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_706_LOKVAR, TOT);
    B_STARTOTHERROUTINE(BAU_700_ALBYN, TOT);
    B_STARTOTHERROUTINE(BAU_722_RASCO, TOT);
    B_STARTOTHERROUTINE(BAU_11041_SHEPHERD, TOT);
    B_STARTOTHERROUTINE(SLD_5002_SUNDER, TOT);
    B_STARTOTHERROUTINE(BAU_724_PAULUS, TOT);
    B_STARTOTHERROUTINE(BAU_725_ELSA, TOT);
    B_STARTOTHERROUTINE(BAU_726_RIK, TOT);
    B_STARTOTHERROUTINE(BAU_727_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_728_OTHO, TOT);
    B_STARTOTHERROUTINE(NONE_11048_HENKER, TOT);
    B_STARTOTHERROUTINE(BAU_729_NOB, TOT);
    B_STARTOTHERROUTINE(BAU_712_STONE, TOT);
    B_STARTOTHERROUTINE(NONE_6262_CARDEN, TOT);
    B_STARTOTHERROUTINE(BAU_730_UWE, TOT);
    B_STARTOTHERROUTINE(BAU_731_MAIK, TOT);
    B_STARTOTHERROUTINE(NONE_13795_DISMAS, TOT);
    B_STARTOTHERROUTINE(NONE_11049_WOODCUTTER, TOT);
    B_STARTOTHERROUTINE(BAU_11036_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11039_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11038_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_11040_FARMER, TOT);
}

func void Q102_FABIOTEAM_CHANGERTN_REST() {
    B_STARTOTHERROUTINE(NONE_100011_MAIWEN, "Cave");
    NPC_REFRESH(NONE_100011_MAIWEN);
    MDL_APPLYOVERLAYMDSTIMED(NONE_100011_MAIWEN, HUMANSTIREDMDS, 300000);
    if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_100011_MAIWEN)) == (FALSE)) {
        CREATEINVITEMS(NONE_100011_MAIWEN, 34000, 1);
        AI_EQUIPBESTMELEEWEAPON(NONE_100011_MAIWEN);
    };
    B_STARTOTHERROUTINE(NONE_100010_DARRYL, "Cave");
    NPC_REFRESH(NONE_100010_DARRYL);
    if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_100010_DARRYL)) == (FALSE)) {
        CREATEINVITEMS(NONE_100010_DARRYL, 34000, 1);
        AI_EQUIPBESTMELEEWEAPON(NONE_100010_DARRYL);
    };
    if (Q101_TIMOSURVIVE) {
        B_STARTOTHERROUTINE(NONE_6_TIMO, "Q102_CAVE");
        NPC_REFRESH(NONE_6_TIMO);
        MDL_APPLYOVERLAYMDSTIMED(NONE_6_TIMO, HUMANSTIREDMDS, 300000);
        if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_6_TIMO)) == (FALSE)) {
            CREATEINVITEMS(NONE_6_TIMO, 39477, 1);
            AI_EQUIPBESTMELEEWEAPON(NONE_6_TIMO);
        };
        if (Q102_FABIOCHOSEN) {
            NONE_6_TIMO.AIVAR[15] = TRUE;
            NONE_6_TIMO.NPCTYPE = NPCTYPE_FRIEND;
        };
    };
    B_STARTOTHERROUTINE(NONE_100008_ANA, "Q102_CAVE");
    NPC_REFRESH(NONE_100008_ANA);
    MDL_APPLYOVERLAYMDSTIMED(NONE_100008_ANA, HUMANSTIREDMDS, 300000);
    if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_100008_ANA)) == (FALSE)) {
        CREATEINVITEMS(NONE_100008_ANA, 34000, 1);
        AI_EQUIPBESTMELEEWEAPON(NONE_100008_ANA);
    };
    if (Q101_LEASURVIVE) {
        B_STARTOTHERROUTINE(NONE_100009_LEA, "Q102_CAVE");
        NPC_REFRESH(NONE_100009_LEA);
        MDL_APPLYOVERLAYMDSTIMED(NONE_100009_LEA, HUMANSTIREDMDS, 300000);
        if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_100009_LEA)) == (FALSE)) {
            CREATEINVITEMS(NONE_100009_LEA, 34000, 1);
            AI_EQUIPBESTMELEEWEAPON(NONE_100009_LEA);
        };
        if (Q102_FABIOCHOSEN) {
            NONE_100009_LEA.AIVAR[15] = TRUE;
            NONE_100009_LEA.NPCTYPE = NPCTYPE_FRIEND;
        };
    };
    if ((Q102_EZEKIELSURVIVED) == (1)) {
        B_STARTOTHERROUTINE(NONE_3_EZEKIEL, "Q102_CAVE");
        NPC_REFRESH(NONE_3_EZEKIEL);
        MDL_APPLYOVERLAYMDSTIMED(NONE_3_EZEKIEL, HUMANSTIREDMDS, 300000);
        if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_3_EZEKIEL)) == (FALSE)) {
            CREATEINVITEMS(NONE_3_EZEKIEL, 34000, 1);
            AI_EQUIPBESTMELEEWEAPON(NONE_3_EZEKIEL);
        };
        if (Q102_FABIOCHOSEN) {
            NONE_3_EZEKIEL.AIVAR[15] = TRUE;
            NONE_3_EZEKIEL.NPCTYPE = NPCTYPE_FRIEND;
        };
    };
    B_KILLNPC(51492);
    WLD_INSERTNPC(50587, "PART_13_DARRYL_DEAD");
}

func void Q102_CHANGEROUTINE() {
    if (Q102_JORNCHOSEN) {
        Q102_JORNDISTANCELIMIT = TRUE;
        NPC_EXCHANGEROUTINE(NONE_1_JORN, "Guide02");
        Q102_JORNCHECKRTN = 3;
        NONE_1_JORN.AIVAR[15] = TRUE;
        NONE_1_JORN.FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
        NPC_EXCHANGEROUTINE(NONE_5_FABIO, "Q102_RUNTOCAVE");
        NONE_5_FABIO.NPCTYPE = NPCTYPE_FRIEND;
        if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_5_FABIO)) == (FALSE)) {
            CREATEINVITEMS(NONE_5_FABIO, 34000, 1);
            AI_EQUIPBESTMELEEWEAPON(NONE_5_FABIO);
        };
        B_STARTOTHERROUTINE(NONE_100012_KAZEEM, "Q102_RUNTOCAVE");
        NPC_REFRESH(NONE_100012_KAZEEM);
        NONE_100012_KAZEEM.NPCTYPE = NPCTYPE_FRIEND;
        if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_100012_KAZEEM)) == (FALSE)) {
            CREATEINVITEMS(NONE_100012_KAZEEM, 34000, 1);
            AI_EQUIPBESTMELEEWEAPON(NONE_100012_KAZEEM);
        };
        B_STARTOTHERROUTINE(NONE_100007_RUPERT, "Q102_RUNTOCAVE");
        NPC_REFRESH(NONE_100007_RUPERT);
        NONE_100007_RUPERT.NPCTYPE = NPCTYPE_FRIEND;
        if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_100007_RUPERT)) == (FALSE)) {
            CREATEINVITEMS(NONE_100007_RUPERT, 34000, 1);
            AI_EQUIPBESTMELEEWEAPON(NONE_100007_RUPERT);
        };
        Q102_FABIOTEAM_CHANGERTN_REST();
        B_STARTOTHERROUTINE(BAU_702_VIKTOR, "MarthaTrialog");
        B_STARTOTHERROUTINE(BAU_703_MARTHA, "StartJorn");
    };
    if (Q102_FABIOCHOSEN) {
        Q102_CAVEDISTANCELIMIT = TRUE;
        NPC_EXCHANGEROUTINE(NONE_5_FABIO, "Guide01");
        NONE_5_FABIO.AIVAR[15] = TRUE;
        NONE_5_FABIO.NPCTYPE = NPCTYPE_FRIEND;
        if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_5_FABIO)) == (FALSE)) {
            CREATEINVITEMS(NONE_5_FABIO, 34000, 1);
            AI_EQUIPBESTMELEEWEAPON(NONE_5_FABIO);
        };
        B_STARTOTHERROUTINE(NONE_100012_KAZEEM, "Guide01");
        NPC_REFRESH(NONE_100012_KAZEEM);
        NONE_100012_KAZEEM.AIVAR[15] = TRUE;
        NONE_100012_KAZEEM.NPCTYPE = NPCTYPE_FRIEND;
        B_STARTOTHERROUTINE(NONE_100007_RUPERT, "Guide01");
        NPC_REFRESH(NONE_100007_RUPERT);
        NONE_100007_RUPERT.AIVAR[15] = TRUE;
        NONE_100007_RUPERT.NPCTYPE = NPCTYPE_FRIEND;
        NONE_100011_MAIWEN.AIVAR[15] = TRUE;
        NONE_100011_MAIWEN.NPCTYPE = NPCTYPE_FRIEND;
        NONE_100010_DARRYL.AIVAR[15] = TRUE;
        NONE_100010_DARRYL.NPCTYPE = NPCTYPE_FRIEND;
        NONE_100008_ANA.AIVAR[15] = TRUE;
        NONE_100008_ANA.NPCTYPE = NPCTYPE_FRIEND;
        NPC_EXCHANGEROUTINE(NONE_1_JORN, "Q102_RUNTOSILBACH");
    };
    WLD_INSERTNPC(50664, "PART_13_CAVE_08");
    WLD_INSERTNPC(50665, "PART_13_CAVE_RAT_01");
    WLD_INSERTNPC(50666, "PART_13_CAVE_RAT_02");
    HERO.AIVAR[4] = FALSE;
}

func void Q102_STOPCAMERACAVE() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(62037, 75, 4);
}

func void Q102_STOPCAMERACAVE_APPLY() {
    var int Q102_STOPCAMERACAVE_COUNT;
    Q102_STOPCAMERACAVE_COUNT = (Q102_STOPCAMERACAVE_COUNT) + (1);
    if ((Q102_STOPCAMERACAVE_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("KM_FABIOFIREPLACE_01");
        WLD_SENDUNTRIGGER("KM_FABIOFIREPLACE_02");
        DIACAM_ENABLE();
        HERO.AIVAR[4] = FALSE;
    };
}

func void Q102_FABIOTEAM_CHANGERTN_CAVE_FABIO() {
    B_STARTOTHERROUTINE(NONE_100007_RUPERT, "CaveGuard");
    NPC_REFRESH(NONE_100007_RUPERT);
    B_STARTOTHERROUTINE(NONE_100012_KAZEEM, "Cave01");
    NPC_REFRESH(NONE_100012_KAZEEM);
    B_STARTOTHERROUTINE(NONE_5_FABIO, "Cave");
    NPC_REFRESH(NONE_5_FABIO);
}

func void Q102_JORNTEAM_CHANGERTN_01() {
    NPC_EXCHANGEROUTINE(NONE_1_JORN, "PlunderHouse2");
    Q102_JORNCHECKRTN = 6;
    HERO.AIVAR[4] = FALSE;
}

func void Q102_JORNTEAM_CHANGERTN_02() {
    NPC_EXCHANGEROUTINE(NONE_1_JORN, "Guide04");
    Q102_JORNCHECKRTN = 7;
    HERO.AIVAR[4] = FALSE;
}

func void Q102_JORNTEAM_SPAWNBLOODFLIES() {
    PRINTD("Krwiopijce specjalne zrespione!");
    WLD_INSERTNPC(50343, "PART13_PATH_11");
    WLD_INSERTNPC(50337, "PART13_PATH_11");
    WLD_INSERTNPC(50339, "PART13_PATH_11");
    WLD_INSERTNPC(50341, "PART13_PATH_11");
    Q102_CHANGEJORNRTN_02 = 1;
}

func void Q102_RUPERTDISTANCELIMIT_TELEPORT() {
    Q102_RUPERTDISTANCEWARN = 0;
    if ((Q102_RUPERTCHECKRTN) == (1)) {
        TELEPORTNPCTOWP(1819, "PART13_CAVE_HERO");
        TELEPORTNPCTOWP(51549, "PART_13_NAV_86");
        AI_TELEPORTALWAYS(NONE_100007_RUPERT, "PART_13_NAV_86", TRUE);
    };
    if ((Q102_RUPERTCHECKRTN) == (2)) {
        TELEPORTNPCTOWP(1819, "PART13_PATH_11");
        TELEPORTNPCTOWP(51549, "PART13_PATH_10");
        AI_TELEPORTALWAYS(NONE_100007_RUPERT, "PART13_PATH_10", TRUE);
    };
    if ((Q102_RUPERTCHECKRTN) == (3)) {
        TELEPORTNPCTOWP(1819, "PART13_VILLAGE_LEA_WAIT");
        TELEPORTNPCTOWP(51549, "PART13_PATH_02");
        AI_TELEPORTALWAYS(NONE_100007_RUPERT, "PART13_PATH_02", TRUE);
    };
    AI_TURNTONPC(HERO, NONE_100007_RUPERT);
    NPC_REFRESH(NONE_100007_RUPERT);
    FADESCREENFROMBLACK(1);
}

func void Q102_SPAWNGOBBOS() {
    PRINTD("Gobbos");
    WLD_INSERTNPC(50506, "PART13_MOB_42");
    WLD_INSERTNPC(50506, "PART13_MOB_43");
}

func void Q102_CHANGEJORNARMOR() {
    NPC_CHANGEARMOR(NONE_1_JORN, 35574);
    NPC_REMOVEINVITEMS(NONE_1_JORN, 35573, NPC_HASITEMS(NONE_1_JORN, 35573));
}

