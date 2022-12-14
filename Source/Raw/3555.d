func void Q406_KILLWATERCIRCLE_APPLY() {
    if ((Q406_KILLWATERCIRCLE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Q406_KillWaterCircle_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("Q406_MOVER_WATERCIRCLE_CORPSES");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_CORPSE_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_CORPSE_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_CORPSE_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_CORPSE_04", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_TABLE", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION(RESERVED_CONST_STRING_155, FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("Q406_MOVER_WATERCIRCLE_CORPSES");
        WLD_SENDTRIGGER(RESERVED_CONST_STRING_155);
        Q406_KILLWATERCIRCLE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - Q406_KillWaterCircle_Apply");
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_CORPSE_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_CORPSE_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_CORPSE_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_CORPSE_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q406_WATERCIRCLE_TABLE", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION(RESERVED_CONST_STRING_155, TRUE, TRUE, TRUE, TRUE);
        if ((Q406_REMOVEMONSTERS) == (FALSE)) {
            Q406_REMOVEMONSTERS = TRUE;
            B_REMOVENPC(0xc5a7);
            B_REMOVENPC(0xc510);
            B_REMOVENPC(0xc511);
            B_REMOVENPC(0xc512);
            B_REMOVENPC(0xc636);
            B_REMOVENPC(0xc637);
            B_REMOVENPC(0xc638);
            B_REMOVENPC(0xc4a9);
            B_REMOVENPC(0xc4aa);
            B_REMOVENPC(0xc4ab);
        };
        FF_REMOVE(0xf96a);
        Q406_KILLWATERCIRCLE_COUNT = 0;
    };
}

var int Q406_KILLWATERCIRCLE_APPLY.Q406_KILLWATERCIRCLE_COUNT = 0;
instance Q406_KILLWATERCIRCLE_APPLY.MOVER1(ZCMOVER)
var int Q406_KILLWATERCIRCLE_APPLY.MOVPTR1 = 0;
var int Q406_KILLWATERCIRCLE_APPLY.Q406_REMOVEMONSTERS = 0;
func void Q406_VOLKERGUARDS_CHANGERTN() {
    B_STARTOTHERROUTINE(NONE_6441_VOLKERGUARD, "FIGHT");
    NPC_REFRESH(NONE_6441_VOLKERGUARD);
    B_STARTOTHERROUTINE(NONE_6442_VOLKERGUARD, "FIGHT");
    NPC_REFRESH(NONE_6442_VOLKERGUARD);
    B_STARTOTHERROUTINE(NONE_202_KESSEL, "Q406_HOUSE2");
    Q406_KESSEL_RTNCHECK = 3;
    NPC_REFRESH(NONE_202_KESSEL);
}

func void Q406_VOLKERGUARDS_CHANGEGIL() {
    NONE_6441_VOLKERGUARD.GUILD = GIL_BDT;
    NONE_6442_VOLKERGUARD.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(HERO, HERO.GUILD);
}

func void Q406_VOLKERGUARDS_SPAWNMOREGUARDS_V1() {
    Q406_KESSEL_GOHOUSE = 10;
    WLD_INSERTNPC(0xde0a, "PART9_PATH_111");
    WLD_INSERTNPC(0xde0d, "PART9_PATH_112");
    WLD_INSERTNPC(0xde01, "PART9_WATERDEATH_VOLKERMAN_01");
    WLD_INSERTNPC(0xde04, "PART9_WATERDEATH_VOLKERMAN_02");
    WLD_INSERTNPC(0xde10, "PART9_WATERDEATH_CROSSBOWMAN_01");
    WLD_INSERTNPC(0xde15, "PART9_WATERDEATH_CROSSBOWMAN_02");
    PRINTD("Ludzie Volkera zrespieni V1");
}

func void Q406_VOLKERGUARDS_CHANGERTN_V1() {
    B_STARTOTHERROUTINE(NONE_6446_VOLKERGUARD, "FIGHT");
    NPC_REFRESH(NONE_6446_VOLKERGUARD);
    B_STARTOTHERROUTINE(NONE_6447_VOLKERGUARD, "FIGHT");
    NPC_REFRESH(NONE_6447_VOLKERGUARD);
    PRINTD("Ludzie Volkera biegną V1");
}

func void Q406_VOLKERGUARDS_CHANGEGIL_V1() {
    NONE_6448_VOLKERGUARD_CROSSBOW.GUILD = GIL_NONE;
    NONE_6449_VOLKERGUARD_CROSSBOW.GUILD = GIL_NONE;
    NONE_6443_VOLKERGUARD.GUILD = GIL_NONE;
    NONE_6444_VOLKERGUARD.GUILD = GIL_NONE;
    NPC_SETTRUEGUILD(NONE_202_KESSEL, NONE_202_KESSEL.GUILD);
    PRINTD("Kusznicy celują V1");
    NPC_SETTRUEGUILD(HERO, HERO.GUILD);
}

func void Q406_VOLKERGUARDS_SPAWNMOREGUARDS_V2() {
    WLD_INSERTNPC(0xde1a, "PART9_PATH_85");
    WLD_INSERTNPC(0xde1d, "PART9_PATH_85");
    WLD_INSERTNPC(0xde07, "PART9_WATERDEATH_VOLKERMAN_03");
    WLD_INSERTNPC(0xde20, "PART9_WATERDEATH_CROSSBOWMAN_01");
    WLD_INSERTNPC(0xde25, "PART9_WATERDEATH_CROSSBOWMAN_02");
    PRINTD("Ludzie Volkera zrespieni V2");
}

func void Q406_VOLKERGUARDS_CHANGERTN_V2() {
    B_STARTOTHERROUTINE(NONE_6450_VOLKERGUARD, "FIGHT");
    NPC_REFRESH(NONE_6450_VOLKERGUARD);
    B_STARTOTHERROUTINE(NONE_6451_VOLKERGUARD, "FIGHT");
    NPC_REFRESH(NONE_6451_VOLKERGUARD);
    PRINTD("Ludzie Volkera biegną V2");
}

func void Q406_VOLKERGUARDS_CHANGEGIL_V2() {
    NONE_6452_VOLKERGUARD_CROSSBOW.GUILD = GIL_NONE;
    NONE_6453_VOLKERGUARD_CROSSBOW.GUILD = GIL_NONE;
    NONE_6445_VOLKERGUARD.GUILD = GIL_NONE;
    NPC_SETTRUEGUILD(NONE_202_KESSEL, NONE_202_KESSEL.GUILD);
    PRINTD("Kusznicy celują V2");
    NPC_SETTRUEGUILD(HERO, HERO.GUILD);
}

func void Q406_SPAWNFIRSTMANHUNTERS() {
    PRINTD("Już szukają Marcina");
    WLD_INSERTNPC(0xe014, "VILLAGE_PATH_205");
    WLD_INSERTNPC(0xe00e, "VILLAGE_PATH_206");
}

func void Q406_CROSSBOW_FIRST_PREPARE() {
    Q406_CROSSBOW_FIRST_COUNT = (Q406_CROSSBOW_FIRST_COUNT) + (1);
    if ((Q406_CROSSBOW_FIRST_COUNT) == (4)) {
        Q406_CROSSBOW_FIRST_COUNT = 0;
        CUTSCENE_START(0x169df);
    };
}

var int Q406_CROSSBOW_FIRST_PREPARE.Q406_CROSSBOW_FIRST_COUNT = 0;
func void Q406_CROSSBOW_SECOND_PREPARE() {
    Q406_CROSSBOW_SECOND_COUNT = (Q406_CROSSBOW_SECOND_COUNT) + (1);
    if ((Q406_CROSSBOW_SECOND_COUNT) == (4)) {
        Q406_CROSSBOW_SECOND_COUNT = 0;
        CUTSCENE_START(0x169e4);
    };
}

var int Q406_CROSSBOW_SECOND_PREPARE.Q406_CROSSBOW_SECOND_COUNT = 0;
