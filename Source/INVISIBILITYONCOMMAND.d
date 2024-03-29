func string INVISIBILITYONCOMMAND(var string B) {
    FF_APPLY(21104);
    return "Enabled invisibility.";
}

func string INVISIBILITYOFFCOMMAND(var string B) {
    FF_REMOVE(21104);
    HERO.AIVAR[4] = FALSE;
    MAKEHEROGHOST(0);
    return "Disabled invisibility.";
}

var int STORYHELPERISOPEN;
func string STORYHELPERCOMMAND(var string B) {
    STORYHELPERISOPEN = TRUE;
    AI_PROCESSINFOS(HERO);
    MEM_INSERTKEYEVENT(KEY_F2);
    return "Done.";
}

func string SETCLOCKSPEEDCOMMAND(var string B) {
    if ((HLP_STRCMP(B, "")) || ((STR_TOINT(B)) < (0))) {
        CLOCKSPEED = 100;
    };
    CLOCKSPEED = STR_TOINT(B);
    CHANGETIMESPEED(CLOCKSPEED);
    return CONCATSTRINGS(CONCATSTRINGS("Set to ", INTTOSTRING(CLOCKSPEED)), "% of normal spped");
}

func string GETDISTANCETOWPCOMMAND(var string B) {
    var int DIST;
    var string WP;
    WP = STR_UPPER(B);
    DIST = NPC_GETDISTTOWP(HERO, WP);
    PRINT(CONCATSTRINGS("Distance: ", INTTOSTRING(DIST)));
    return "";
}

func string Q602STARTCOMMAND(var string B) {
    WLD_SETTIME(20, 55);
    LOG_SETSTATUS(_@(MIS_Q601), TOPIC_Q601, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_Q602, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q602), TOPIC_Q602, LOG_RUNNING);
    B_LOGENTRY(TOPIC_Q602, LOG_Q602_START);
    return "Done";
}

func string MYRTANYBRZASKV1COMMAND(var string B) {
    WLD_SETTIME(21, 0);
    if (!(HLP_ISVALIDNPC(NONE_6319_KARIN))) {
        WLD_INSERTNPC(55903, "PART4_FISHERMAN_FIREPLACE_05");
    };
    if (!(HLP_ISVALIDNPC(MIL_6318_LUTZ))) {
        WLD_INSERTNPC(52420, "PARTM2_PATH_69");
    };
    if (!(HLP_ISVALIDNPC(BAU_703_MARTHA))) {
        WLD_INSERTNPC(57542, "PARTM2_PATH_69");
    };
    B_STARTOTHERROUTINE(NONE_6319_KARIN, ORCHARD);
    B_STARTOTHERROUTINE(MIL_6318_LUTZ, ORCHARD);
    B_STARTOTHERROUTINE(BAU_703_MARTHA, ORCHARD);
    SQ213_EVERYTHINGREADY = 2;
    SQ213_KARINWILLSING = 1;
    SQ213_GOTVINE = 1;
    CREATEINVITEMS(HERO, 37421, 1);
    LOG_CREATETOPIC(TOPIC_SQ213, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ213), TOPIC_SQ213, LOG_RUNNING);
    SQ213_PREPAREBLANKET();
    NPC_CHANGEARMOR(MIL_6318_LUTZ, 35549);
    TELEPORTNPCTOWP(1819, "PART9_PATH_75");
    return "Done";
}

func string MYRTANYBRZASKV2COMMAND(var string B) {
    WLD_SETTIME(21, 0);
    if (!(HLP_ISVALIDNPC(MIL_6318_LUTZ))) {
        WLD_INSERTNPC(52420, "PARTM2_PATH_69");
    };
    if (!(HLP_ISVALIDNPC(BAU_703_MARTHA))) {
        WLD_INSERTNPC(57542, "PARTM2_PATH_69");
    };
    B_STARTOTHERROUTINE(MIL_6318_LUTZ, ORCHARD);
    B_STARTOTHERROUTINE(BAU_703_MARTHA, ORCHARD);
    SQ213_EVERYTHINGREADY = 2;
    SQ213_GOTVINE = 1;
    CREATEINVITEMS(HERO, 37421, 1);
    LOG_CREATETOPIC(TOPIC_SQ213, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ213), TOPIC_SQ213, LOG_RUNNING);
    SQ213_PREPAREBLANKET();
    NPC_CHANGEARMOR(MIL_6318_LUTZ, 35549);
    TELEPORTNPCTOWP(1819, "PART9_PATH_75");
    return "Done";
}

func string INEXTREMOCOMMAND(var string B) {
    KQ404_SPAWNNPC();
    KQ404_PREPAREHOUSE();
    return "Done";
}

func string KNUTISGONECOMMAND(var string B) {
    KQ406_TELEPORTKNUT();
    return "Done";
}

func string PLAYERHOUSECOMMAND(var string B) {
    OLDCITYENTERED = TRUE;
    TELEPORTNPCTOWP(1819, RNG_NS67B_WAYPOINT);
    CREATEINVITEMS(HERO, 36893, 1);
    CREATEINVITEMS(HERO, 34203, 20000);
    CREATEINVITEMS(HERO, 35531, 1);
    AI_EQUIPARMOR(HERO, 35531);
    SQ411_CHANGEDOOR();
    SQ411_MARVINGOTKEYS = TRUE;
    KAPITEL = 4;
    return "Done";
}

func string RAZORBOSSCOMMAND(var string B) {
    LOG_CREATETOPIC(TOPIC_SQ416, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ416), TOPIC_SQ416, LOG_RUNNING);
    SQ416_STARTBOSSFIGHT = 1;
    SQ416_HUNTERSSLEEP = 2;
    TELEPORTNPCTOWP(1819, "PART12_SQ416_CAVE_01");
    TELEPORTNPCTOWP(53778, "PART12_SQ416_CAVE_02");
    B_TURNTONPC(HERO, VLK_3015_DETLOW);
    B_TURNTONPC(VLK_3015_DETLOW, HERO);
    VLK_3015_DETLOW.AIVAR[15] = TRUE;
    WLD_INSERTNPC(50206, "PART12_SQ416_CAVE_BOSS");
    B_STARTOTHERROUTINE(VLK_3015_DETLOW, "SQ416_CAVE_FOLLOW");
    NPC_REFRESH(VLK_3015_DETLOW);
    SQ416_DETLOW_RTNCHECK = 6;
    SETDIALOGUETOLDPROPERTY(73985, TRUE);
    WLD_SENDTRIGGER("SQ416_ALPHAWALL_CAVE");
    CREATEINVITEMS(VLK_3015_DETLOW, 39549, 1);
    return "Done";
}

func string MAGEBOSSCOMMAND(var string B) {
    LOG_CREATETOPIC(TOPIC_Q503, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q503), TOPIC_Q503, LOG_RUNNING);
    TELEPORTNPCTOWP(1819, "PART5_VOLFZACKE_TELEPORT_01");
    WLD_INSERTNPC(50872, "PART5_VOLFZACKE_MAGE");
    WLD_INSERTNPC(51225, "FP_SPAWNPOINT_MAGEBOSS_02");
    WLD_INSERTNPC(51226, "FP_SPAWNPOINT_MAGEBOSS_03");
    KAPITEL = 5;
    Q503_GOTOVOLFZACKE = 4;
    Q503_CANUSETELEPORT = 1;
    return "Done";
}

func string BIGBENCOMMAND(var string B) {
    LOG_CREATETOPIC(TOPIC_Q306, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q306), TOPIC_Q306, LOG_RUNNING);
    TELEPORTNPCTOWP(1819, "P17_HAVEN_ARENA_PLAYER_01");
    KAPITEL = 3;
    Q306_READY = TRUE;
    Q306_READYFORFIGHT = 1;
    Q306_STATE = 23;
    TOURNAMENT_TELEPORTVIEWRS();
    AI_FUNCTION(HERO, 92500);
    WLD_SENDTRIGGER("KM_Q306_ARENAFIGHT");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_PLAYER");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_OPPONENT");
    CREATEINVITEMS(HERO, 34701, 5);
    CREATEINVITEMS(HERO, 38183, 5);
    CREATEINVITEMS(HERO, 33718, 5);
    CREATEINVITEMS(HERO, 34697, 5);
    B_STARTOTHERROUTINE(PIR_1307_PROXIMO, "ArenaSpeaker");
    TELEPORTNPCTOWP(58696, "P17_HAVEN_ARENA_SPEAKER_01");
    return "Done";
}

func string SQ304CUTSCENECOMMAND(var string B) {
    LOG_CREATETOPIC(TOPIC_SQ304, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ304), TOPIC_SQ304, LOG_RUNNING);
    if (!(HLP_ISVALIDNPC(PIR_1324_MORITZ))) {
        WLD_INSERTNPC(58782, "PARTM2_PATH_69");
    };
    B_STARTOTHERROUTINE(PIR_1324_MORITZ, "TREASURE03");
    TELEPORTNPCTOWP(1819, "PART11_PATH_116");
    TELEPORTNPCTOWP(58782, PIR_1324_MORITZ.WP);
    MORITZ_SQ304_RAKEPLACECOUNTER = 9;
    SETDIALOGUETOLDPROPERTY(84703, TRUE);
    if ((NPC_ISDEAD(KM_TURTLE_SQ304_01)) == (FALSE)) {
        B_REMOVENPC(50145);
    };
    if ((NPC_ISDEAD(KM_TURTLE_SQ304_02)) == (FALSE)) {
        B_REMOVENPC(50144);
    };
    return "Done";
}

func string ORCCAMPSCOMMAND(var string B) {
    ORCCAMP_CHAPTER5_PART17();
    ORCCAMP_CHAPTER5_PART17_SPAWNNPC();
    KQ407_ORCCAMP_PART17_PREPARE();
    KQ407_ORCCAMP_PART13_PREPARE();
    ORCCAMP_CHAPTER4_PART6_01();
    ORCCAMP_CHAPTER4_PART6_01_SPAWNNPC();
    ORCCAMP_CHAPTER4_PARTM8_01();
    ORCCAMP_CHAPTER4_PARTM8_01_SPAWNNPC();
    ORCCAMP_CHAPTER5_PART6();
    ORCCAMP_CHAPTER5_PART6_SPAWNNPC();
    ORCCAMP_CHAPTER5_KILLEVRYONEONFARM();
    KQ407_ORCCAMP_PART6_SPAWNNPC();
    ORCCAMP_CHAPTER5_PART1();
    ORCCAMP_CHAPTER5_PART1_SPAWNNPC();
    KQ407_ORCCAMP_PART1_PREPARE();
    ORCCAMP_CHAPTER5_PART14();
    ORCCAMP_CHAPTER5_PART14_SPAWNNPC();
    KQ407_ORCCAMP_PART15_PREPARE();
    return "Done";
}

func string LORENZOISGONECOMMAND(var string B) {
    B_LORENZOISGONE();
    return "Done";
}

func string MONASTERYCOMMAND(var string B) {
    WLD_INSERTNPC(56737, "PART8_MONASTERY_Q501_PREPARE_01");
    WLD_INSERTNPC(56756, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56747, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56516, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56522, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56534, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56528, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56744, "PART8_MONASTERY_107");
    WLD_INSERTNPC(56489, "PART8_MONASTERY_GARDEN_STAND");
    WLD_INSERTNPC(56583, "PART8_MONASTERY_PRECINCT_19");
    WLD_INSERTNPC(56595, "PART8_MONASTERY_SMALLTALK_01");
    WLD_INSERTNPC(56601, "PART8_MONASTERY_SMALLTALK_02");
    Q501_NOVIZENORMALRTN();
    Q501_NOVIZENORMALRTN_V2();
    B_STARTOTHERROUTINE(NOV_208_NOVIZE, "NORMALDAY");
    NPC_REFRESH(NOV_208_NOVIZE);
    B_STARTOTHERROUTINE(NOV_205_NOVIZE, "NORMALDAY");
    NPC_REFRESH(NOV_205_NOVIZE);
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN, TOT);
    NPC_REFRESH(KDW_203_RIORDIAN);
    WLD_SENDTRIGGER("MONASTERY_DOOR_HEALROOM");
    WLD_SENDTRIGGER("MONASTERY_DOOR_TOWER");
    WLD_SENDTRIGGER("MONASTERY_DOOR_RIEROL");
    WLD_SENDTRIGGER("MONASTERY_DOOR_DUNGEON_01");
    WLD_SENDTRIGGER("MONASTERY_DOOR_DUNGEON_02");
    WLD_SENDTRIGGER("MONASTERY_DOOR_MAGEROOM_02");
    WLD_SENDTRIGGER("MONASTERY_DOOR_MAGEROOM_03");
    WLD_SENDTRIGGER("MONASTERY_DOOR_MAGEROOM_04");
    WLD_SENDTRIGGER("MONASTERY_GATE_01");
    WLD_SENDTRIGGER("MONASTERY_GATE_02");
    WLD_SENDTRIGGER("MONASTERY_GATE_03");
    WLD_SENDTRIGGER("MONASTERY_GATE_04");
    return "Done";
}

func string GIVERUNESCOMMAND(var string B) {
    RESERVED_VAR_STRING_05 = STR_UPPER(B);
    NPC_GETTARGET(HERO);
    RESERVED_VAR_NPC_01 = HLP_GETNPC(1816);
    NPC_EXCHANGEROUTINE(RESERVED_VAR_NPC_01, RESERVED_VAR_STRING_05);
    NPC_REFRESH(RESERVED_VAR_NPC_01);
    PRINT(RESERVED_VAR_STRING_05);
    PRINT(RESERVED_VAR_NPC_01.NAME[0]);
    return "";
}

func string WOLFSDENARMORCOMMAND(var string B) {
    LOG_CREATETOPIC(TOPIC_SQ417, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ417), TOPIC_SQ417, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_SQ419, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ419), TOPIC_SQ419, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_Q404, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q404), TOPIC_Q404, LOG_SUCCESS);
    SQ417_DECISION = 2;
    SQ419_FINISHCHECK = 1;
    SQ417_FINISHCHECK_DAY = WLD_GETDAY();
    SQ419_FINISHCHECK_DAY = WLD_GETDAY();
    PC_SLEEP(8);
    PC_SLEEP(8);
    return "Done";
}

func void CHANGEWORLD_SEWERS() {
    CHANGEWORLD("ARCHOLOS_SEWERS.ZEN", "");
}

func void CHANGEWORLD_VOLFZACK() {
    CHANGEWORLD("ARCHOLOS_VOLFZACKE.ZEN", "");
}

func void CHANGEWORLD_SILVERMINE() {
    CHANGEWORLD("ARCHOLOS_SILVERMINE.ZEN", "");
}

func void CHANGEWORLD_ENDGAME() {
    CHANGEWORLD("ARCHOLOS_ENDGAME.ZEN", "");
}

func void CHANGEWORLD_MAINLAND() {
    CHANGEWORLD("ARCHOLOS_MAINLAND.ZEN", "");
}

func string KANALYCOMMAND(var string B) {
    CHANGEWORLD_SEWERS();
    return "Done";
}

func string VOLFZACKCOMMAND(var string B) {
    CHANGEWORLD_VOLFZACK();
    return "Done";
}

func string SILVERMINECOMMAND(var string B) {
    CHANGEWORLD_SILVERMINE();
    return "Done";
}

func string ENDGAMECOMMAND(var string B) {
    CHANGEWORLD_ENDGAME();
    return "Done";
}

func string MAINLANDCOMMAND(var string B) {
    CHANGEWORLD_MAINLAND();
    return "Done";
}

func string WATERMAGETRIALOGCOMMAND(var string B) {
    KAPITEL = 5;
    WLD_INSERTNPC(56737, "PART8_MONASTERY_Q501_PREPARE_01");
    WLD_INSERTNPC(56756, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56747, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56516, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56522, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56534, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56528, "PART8_MONASTERY_Q501_PREPARE_02");
    WLD_INSERTNPC(56744, "PART8_MONASTERY_107");
    WLD_INSERTNPC(56489, "PART8_MONASTERY_GARDEN_STAND");
    WLD_INSERTNPC(56583, "PART8_MONASTERY_PRECINCT_19");
    WLD_INSERTNPC(56595, "PART8_MONASTERY_SMALLTALK_01");
    WLD_INSERTNPC(56601, "PART8_MONASTERY_SMALLTALK_02");
    Q501_NOVIZENORMALRTN();
    Q501_NOVIZENORMALRTN_V2();
    B_STARTOTHERROUTINE(NOV_208_NOVIZE, "NORMALDAY");
    NPC_REFRESH(NOV_208_NOVIZE);
    B_STARTOTHERROUTINE(NOV_205_NOVIZE, "NORMALDAY");
    NPC_REFRESH(NOV_205_NOVIZE);
    WLD_SENDTRIGGER("MONASTERY_DOOR_HEALROOM");
    WLD_SENDTRIGGER("MONASTERY_DOOR_TOWER");
    WLD_SENDTRIGGER("MONASTERY_DOOR_RIEROL");
    WLD_SENDTRIGGER("MONASTERY_DOOR_DUNGEON_01");
    WLD_SENDTRIGGER("MONASTERY_DOOR_DUNGEON_02");
    WLD_SENDTRIGGER("MONASTERY_DOOR_MAGEROOM_02");
    WLD_SENDTRIGGER("MONASTERY_DOOR_MAGEROOM_03");
    WLD_SENDTRIGGER("MONASTERY_DOOR_MAGEROOM_04");
    WLD_SENDTRIGGER("MONASTERY_GATE_01");
    WLD_SENDTRIGGER("MONASTERY_GATE_02");
    WLD_SENDTRIGGER("MONASTERY_GATE_03");
    WLD_SENDTRIGGER("MONASTERY_GATE_04");
    SETDIALOGUETOLDPROPERTY(80446, TRUE);
    LOG_CREATETOPIC(TOPIC_Q501, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q501), TOPIC_Q501, 2);
    LOG_CREATETOPIC(TOPIC_Q502, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q502), TOPIC_Q502, 1);
    B_STARTOTHERROUTINE(NONE_202_KESSEL, "Q502_MONASTERY");
    NPC_REFRESH(NONE_202_KESSEL);
    TELEPORTNPCTOWP(56688, NONE_202_KESSEL.WP);
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN, "Q501_MAGES");
    NPC_REFRESH(KDW_203_RIORDIAN);
    TELEPORTNPCTOWP(56616, KDW_203_RIORDIAN.WP);
    B_STARTOTHERROUTINE(KDW_216_INGOLF, "Q502_CUTSCENE");
    NPC_REFRESH(KDW_216_INGOLF);
    TELEPORTNPCTOWP(56676, KDW_216_INGOLF.WP);
    B_STARTOTHERROUTINE(KDW_301_CUSTO, "Q502_CUTSCENE");
    NPC_REFRESH(KDW_301_CUSTO);
    TELEPORTNPCTOWP(56612, KDW_301_CUSTO.WP);
    B_STARTOTHERROUTINE(KDW_200_PRIOR, "Q502_CUTSCENE");
    NPC_REFRESH(KDW_200_PRIOR);
    TELEPORTNPCTOWP(56607, KDW_200_PRIOR.WP);
    B_STARTOTHERROUTINE(KDW_215_NOTGER, "Q502_CUTSCENE");
    NPC_REFRESH(KDW_215_NOTGER);
    TELEPORTNPCTOWP(56669, KDW_215_NOTGER.WP);
    B_STARTOTHERROUTINE(KDW_214_BADULF, "Q502_CUTSCENE");
    NPC_REFRESH(KDW_214_BADULF);
    TELEPORTNPCTOWP(56664, KDW_214_BADULF.WP);
    return "Done";
}

func string MILITIA_MAKEMESWORDSMAN(var string B) {
    HERO.GUILD = GIL_MIL;
    CREATEINVITEMS(HERO, 35488, 1);
    AI_EQUIPARMOR(HERO, 35488);
    LOG_CREATETOPIC(TOPIC_QM202, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QM202), TOPIC_QM202, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_QM304, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QM304), TOPIC_QM304, LOG_SUCCESS);
    QM304_FINISH = TRUE;
    QM304_FINISH_DAY = WLD_GETDAY();
    return "Done";
}

func string MILITIA_MAKEMESWORDSMAN2(var string B) {
    HERO.GUILD = GIL_MIL;
    MARVIN_MILITIASPECIALIZATION = MILITIA_SPECIALIZATION_FIGHTER;
    CREATEINVITEMS(HERO, 35501, 1);
    AI_EQUIPARMOR(HERO, 35501);
    LOG_CREATETOPIC(TOPIC_QM305, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QM305), TOPIC_QM305, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_QM401, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QM401), TOPIC_QM401, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_KQ402, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_KQ402), TOPIC_KQ402, LOG_SUCCESS);
    QM305_FINISH = TRUE;
    QM305_FINISH_DAY = WLD_GETDAY();
    QM401_FINISH = TRUE;
    QM401_FINISH_DAY = WLD_GETDAY();
    KQ402_FINISH = TRUE;
    KQ402_FINISH_DAY = WLD_GETDAY();
    return "Done";
}

func string MILITIA_MAKEMECROSSBOWMAN(var string B) {
    HERO.GUILD = GIL_MIL;
    CREATEINVITEMS(HERO, 35488, 1);
    AI_EQUIPARMOR(HERO, 35488);
    LOG_CREATETOPIC(TOPIC_QM201, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QM201), TOPIC_QM201, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_QM303, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QM303), TOPIC_QM303, LOG_SUCCESS);
    QM303_FINISH = TRUE;
    QM303_FINISH_DAY = WLD_GETDAY();
    return "Done";
}

func string MILITIA_MAKEMECROSSBOWMAN2(var string B) {
    HERO.GUILD = GIL_MIL;
    MARVIN_MILITIASPECIALIZATION = MILITIA_SPECIALIZATION_CROSSBOWMAN;
    CREATEINVITEMS(HERO, 35493, 1);
    AI_EQUIPARMOR(HERO, 35493);
    LOG_CREATETOPIC(TOPIC_QM301, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QM301), TOPIC_QM301, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_QM401, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QM401), TOPIC_QM401, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_KQ402, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_KQ402), TOPIC_KQ402, LOG_SUCCESS);
    QM301_FINISH = TRUE;
    QM301_FINISH_DAY = WLD_GETDAY();
    QM401_FINISH = TRUE;
    QM401_FINISH_DAY = WLD_GETDAY();
    KQ402_FINISH = TRUE;
    KQ402_FINISH_DAY = WLD_GETDAY();
    return "Done";
}

func string ARAXOS_MAKEMESWORDSMAN2(var string B) {
    HERO.GUILD = GIL_SLD;
    MARVIN_ARAXOSSPECIALIZATION = ARAXOS_SPECIALIZATION_FIGHTER;
    CREATEINVITEMS(HERO, 35454, 1);
    AI_EQUIPARMOR(HERO, 35454);
    LOG_CREATETOPIC(TOPIC_QA301, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QA301), TOPIC_QA301, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_QA401, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QA401), TOPIC_QA401, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_KQ403, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_KQ403), TOPIC_KQ403, LOG_SUCCESS);
    QA301_FINISH = TRUE;
    QA301_FINISH_DAY = WLD_GETDAY();
    QA401_FINISH = TRUE;
    QA401_FINISH_DAY = WLD_GETDAY();
    KQ403_FINISH = TRUE;
    KQ403_FINISH_DAY = WLD_GETDAY();
    return "Done";
}

func string ARAXOS_MAKEMEARCHER2(var string B) {
    HERO.GUILD = GIL_SLD;
    MARVIN_ARAXOSSPECIALIZATION = ARAXOS_SPECIALIZATION_ARCHER;
    CREATEINVITEMS(HERO, 35470, 1);
    AI_EQUIPARMOR(HERO, 35470);
    LOG_CREATETOPIC(TOPIC_QA302, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QA302), TOPIC_QA302, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_QA401, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QA401), TOPIC_QA401, LOG_SUCCESS);
    LOG_CREATETOPIC(TOPIC_KQ403, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_KQ403), TOPIC_KQ403, LOG_SUCCESS);
    QA302_FINISH = TRUE;
    QA302_FINISH_DAY = WLD_GETDAY();
    QA401_FINISH = TRUE;
    QA401_FINISH_DAY = WLD_GETDAY();
    KQ403_FINISH = TRUE;
    KQ403_FINISH_DAY = WLD_GETDAY();
    return "Done";
}

func string STARTALLQUESTS(var string B) {
    B_STARTALLQUESTS();
    return "Done";
}

func string STOPALLQUESTS(var string B) {
    B_STOPALLQUESTS();
    return "Done";
}

func string FINISHALLQUESTS(var string B) {
    B_FINISHALLQUESTS();
    return "Done";
}

func string VOLFZACKEBRIDGE(var string B) {
    CUTSCENE_START(92672);
    return "Done";
}

func string VOLFZACKEOPENGATE(var string B) {
    WLD_SENDTRIGGER("KM_VOLFZACK_GATE_LEFT");
    WLD_SENDTRIGGER("KM_VOLFZACK_GATE_RIGHT");
    WLD_SENDTRIGGER("KM_VOLFZACK_GATE_KEY");
    LOG_CREATETOPIC(TOPIC_Q514, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q514), TOPIC_Q514, LOG_RUNNING);
    return "Done";
}

func string CITY_NOENTRY(var string B) {
    CUTSCENE_START(92299);
    return "Done";
}

func string HAVEN_NOENTRY(var string B) {
    CUTSCENE_START(92321);
    return "Done";
}

func string VOLFZACKEWARRIORS(var string B) {
    WLD_SENDTRIGGER("VOLFZACKE_GATE_01");
    WLD_SENDTRIGGER("VOLFZACKE_GATE_02");
    CREATEINVITEMS(HERO, 39610, 1);
    CREATEINVITEMS(HERO, 39611, 1);
    CREATEINVITEMS(HERO, 39612, 1);
    Q514_CAMPISREADY = 1;
    if ((HERO.GUILD) == (GIL_MIL)) {
        Q509_ARWIDVOLFZACKE = 1;
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        Q509_CARAMONVOLFZACKE = 1;
    };
    Q504_RUUDVOLFZACKE = 1;
    Q504_LOWELLVOLFZACKE = 1;
    Q504_REFIRNERALVOLFZACKE = 1;
    Q504_VEIGOVOLFZACKE = 1;
    Q504_UWEVOLFZACKE = 1;
    Q509_ILSEVOLFZACKE = 1;
    Q509_GRIFVOLFZACKE = 1;
    Q509_JAVADVOLFZACKE = 1;
    Q509_LUTZVOLFZACKE = 1;
    Q509_BENVOLFZACKE = 1;
    Q509_GARDVOLFZACKE = 1;
    Q509_HAVARDVOLFZACKE = 1;
    Q509_BERTOVOLFZACKE = 1;
    Q509_CANDACVOLFZACKE = 1;
    Q509_CORTEZVOLFZACKE = 1;
    Q514_SPAWNFRIENDS();
    Q514_PREPARECAMP();
    Q514_FRIENDS_CAMPRTN();
    LOG_CREATETOPIC(TOPIC_Q514, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q514), TOPIC_Q514, LOG_RUNNING);
    return "Done";
}

func string SQ408_CANON(var string B) {
    FF_APPLYONCEEXTGT(62474, 0, -(1));
    TELEPORTNPCTOWP(1819, "PART17_SQ408_HERO");
    SQ408_CANUSECANON = 3;
    CREATEINVITEMS(HERO, 34742, 1);
    B_STARTOTHERROUTINE(PIR_1329_SAUL, "SQ408");
    TELEPORTNPCTOWP(58818, PIR_1329_SAUL.WP);
    return "";
}

func string SQ311_MINECHECK(var string B) {
    LOG_CREATETOPIC(TOPIC_SQ311, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ311), TOPIC_SQ311, LOG_RUNNING);
    SQ311_CABIFOLLOW = 1;
    if (!(HLP_ISVALIDNPC(MIL_4040_CABI))) {
        WLD_INSERTNPC(52903, "PART10_PATH2_50");
    };
    if (!(HLP_ISVALIDNPC(MIL_4042_NEIR))) {
        WLD_INSERTNPC(52951, "PART10_PATH2_50");
    };
    B_STARTOTHERROUTINE(MIL_4040_CABI, "SQ311_WAIT_MINE");
    B_STARTOTHERROUTINE(MIL_4042_NEIR, "SQ311_WAIT_MINE");
    TELEPORTNPCTOWP(52903, MIL_4040_CABI.WP);
    TELEPORTNPCTOWP(52951, MIL_4042_NEIR.WP);
    TELEPORTNPCTOWP(1819, "PART10_PATH2_56");
    SETDIALOGUETOLDPROPERTY(80758, TRUE);
    CREATEINVITEMS(HERO, 35501, 1);
    AI_EQUIPARMOR(HERO, 35501);
    HERO.GUILD = GIL_MIL;
    return "AAAH! WALKA!";
}

func string SENDTRIGGERCOMMAND(var string B) {
    PRINT(CONCATSTRINGS("SendTrigger->", STR_UPPER(B)));
    WLD_SENDTRIGGER(STR_UPPER(B));
    return "done";
}

func string SENDUNTRIGGERCOMMAND(var string B) {
    PRINT(CONCATSTRINGS("SendUnTrigger->", STR_UPPER(B)));
    WLD_SENDUNTRIGGER(STR_UPPER(B));
    return "done";
}

func string TOPGUNMODECOMMAND(var string B) {
    var int ZCAICAMERA__CHECKUNDERWATERFX;
    FF_APPLY(21105);
    MEMORYPROTECTIONOVERRIDE(ZCAICAMERA__CHECKUNDERWATERFX, 1);
    MEM_WRITEBYTE(ZCAICAMERA__CHECKUNDERWATERFX, ASMINT_OP_RETN);
    return "Done.";
}

func string CREATEALLITEMSCOMMAND(var string B) {
    var ZCPAR_SYMBOL SYMB;
    var int I;
    REPEAT(I, MEM_PARSER.SYMTAB_TABLE_NUMINARRAY);
    SYMB = _^(MEM_READINTARRAY(MEM_PARSER.SYMTAB_TABLE_ARRAY, I));
    if (((((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) != (ZPAR_TYPE_INSTANCE)) || ((STR_INDEXOF(SYMB.NAME, ".")) > (0))) || (!(SYMB.PARENT))) {
        CONTINUE;
    };
    SYMB = _^(SYMB.PARENT);
    if (HLP_STRCMP(SYMB.NAME, "C_ITEM")) {
        if (((((((I) != (HLP_GETINSTANCEID(THISSHOULDBENOTHERE))) && ((I) != (HLP_GETINSTANCEID(STOPBEFOREISTOOLATE)))) && ((I) != (HLP_GETINSTANCEID(YOUMUSTGOBACK)))) && ((I) != (HLP_GETINSTANCEID(REGRETISTHEONLYTHINGYOUWILLFIND)))) && ((I) != (HLP_GETINSTANCEID(LASTWARNINGTURNBACK)))) && ((I) != (HLP_GETINSTANCEID(NOBODYCAMEFORHELP)))) {
            CREATEINVITEMS(HERO, I, 1);
        };
    };
    if ((SYMB.PARENT) && (((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_PROTOTYPE))) {
        SYMB = _^(SYMB.PARENT);
        if (HLP_STRCMP(SYMB.NAME, "C_ITEM")) {
            CREATEINVITEMS(HERO, I, 1);
        };
    };
    END;
    return "Done";
}

func int CALLFUNCTIONCOMMAND_PUSHSYMBOL(var int SYMBID) {
    var MEMINT_HELPERCLASS INST5;
    var MEMINT_HELPERCLASS INST9;
    var MEMINT_HELPERCLASS INST7;
    var MEMINT_HELPERCLASS INST4;
    var MEMINT_HELPERCLASS INST3;
    var MEMINT_HELPERCLASS INST8;
    var MEMINT_HELPERCLASS INST2;
    var MEMINT_HELPERCLASS INST6;
    var MEMINT_HELPERCLASS INST0;
    var int N;
    var MEMINT_HELPERCLASS INST1;
    var ZCPAR_SYMBOL SYMB;
    SYMB = _^(MEM_GETSYMBOLBYINDEX(SYMBID));
    if (((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_INSTANCE)) {
        N += 1;
        if ((N) == (10)) {
            N = 0;
        };
        if ((N) == (0)) {
            INST0 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64590);
        };
        if ((N) == (1)) {
            INST1 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64591);
        };
        if ((N) == (2)) {
            INST2 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64592);
        };
        if ((N) == (3)) {
            INST3 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64593);
        };
        if ((N) == (4)) {
            INST4 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64594);
        };
        if ((N) == (5)) {
            INST5 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64595);
        };
        if ((N) == (6)) {
            INST6 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64596);
        };
        if ((N) == (7)) {
            INST7 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64597);
        };
        if ((N) == (8)) {
            INST8 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64598);
        };
        if ((N) == (9)) {
            INST9 = _^(SYMB.OFFSET);
            MEM_PUSHINSTPARAM(64599);
        };
        return TRUE;
    };
    if ((((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_INT)) || (((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_FLOAT))) {
        MEM_PUSHINTPARAM(SYMB.CONTENT);
        return TRUE;
    };
    if (((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_STRING)) {
        MEM_PUSHSTRINGPARAM(MEM_READSTRING(SYMB.CONTENT));
        return TRUE;
    };
    if (((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_FUNC)) {
        MEM_PUSHINTPARAM(SYMBID);
        return TRUE;
    };
    return FALSE;
}

func string CALLFUNCTIONCOMMAND(var string QUERY) {
    var int RPTR;
    var MEMINT_HELPERCLASS RESULT;
    var int RESINT;
    var int PTYPE;
    var string SYMBOL_TYPES;
    var int FSYMBID;
    var int I;
    var string RARGS;
    var int NUMPARAMS;
    var int RETTYPE;
    var ZCPAR_SYMBOL PSYMB;
    var int ARGISFLOAT;
    var string FUNCNAME;
    var ZCPAR_SYMBOL ISYMB;
    var int FIRSTCHAR;
    var ZCPAR_SYMBOL FSYMB;
    var string ARGINT;
    var int J;
    var int K;
    var int L;
    var string ARGS;
    var int ARGDECF;
    var int ARGISSTR;
    var string ERRSTR1;
    var int ARGISNUMBER;
    var int RESF;
    var string ARGDEC;
    var ZSTRING ZRARGS;
    var int ARGINTI;
    var int ASYMBID;
    var ZCPAR_SYMBOL ASYMB;
    var string PTYPES;
    var string RESSTR;
    if ((HLP_STRCMP(QUERY, "")) || (HLP_STRCMP(QUERY, " "))) {
        return "";
    };
    I = STR_INDEXOF(QUERY, " ");
    if ((I) != (-(1))) {
        FUNCNAME = STR_SUBSTR(QUERY, 0, I);
        ARGS = STR_SUBSTR(QUERY, I, (STR_LEN(QUERY)) - (I));
    };
    FUNCNAME = QUERY;
    ARGS = "";
    FSYMBID = MEM_GETSYMBOLINDEX(FUNCNAME);
    if (((FSYMBID) < (0)) || ((FSYMBID) >= (CURRSYMBOLTABLELENGTH))) {
        return CONCATSTRINGS("Function not found: ", FUNCNAME);
    };
    FSYMB = _^(MEM_GETSYMBOLBYINDEX(FSYMBID));
    if (((FSYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) != (ZPAR_TYPE_FUNC)) {
        return CONCATSTRINGS("Symbol is not a function: ", FUNCNAME);
    };
    NUMPARAMS = (FSYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE);
    RETTYPE = (FSYMB.OFFSET) << (12);
    if (NUMPARAMS) {
        RARGS = ARGS;
        ZRARGS = _^(_@S(RARGS));
        REPEAT(I, NUMPARAMS);
        PSYMB = _^(MEM_GETSYMBOLBYINDEX(((FSYMBID) + (1)) + (I)));
        PTYPE = (PSYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE);
        PTYPES = MEM_READSTATSTRINGARR(SYMBOL_TYPES[0], (PTYPE) >> (12));
        ERRSTR1 = CONCATSTRINGS("Argument #", INTTOSTRING((I) + (1)));
        ERRSTR1 = CONCATSTRINGS(ERRSTR1, ": ");
        if ((ZRARGS.LEN) < (1)) {
            return CONCATSTRINGS("Not enough arguments. Expected ", INTTOSTRING(NUMPARAMS));
        };
        J = 0;
        L = MEM_READBYTE((ZRARGS.PTR) + (J));
        WHILE((L) == (32));
        if ((ZRARGS.LEN) <= ((J) + (1))) {
            return CONCATSTRINGS("Not enough arguments. Expected ", INTTOSTRING(NUMPARAMS));
        };
        J += 1;
        L = MEM_READBYTE((ZRARGS.PTR) + (J));
        END;
        RARGS = STR_SUBSTR(RARGS, J, (ZRARGS.LEN) - (J));
        FIRSTCHAR = MEM_READBYTE(ZRARGS.PTR);
        ARGISSTR = (FIRSTCHAR) == (34);
        ARGISNUMBER = (((FIRSTCHAR) >= (48)) && ((FIRSTCHAR) <= (57))) || ((FIRSTCHAR) == (45));
        if (ARGISSTR) {
            if ((PTYPE) != (ZPAR_TYPE_STRING)) {
                return CONCATSTRINGS(CONCATSTRINGS(ERRSTR1, "Expected type "), PTYPES);
            };
            J = 1;
            L = MEM_READBYTE((ZRARGS.PTR) + (J));
            WHILE((L) != (34));
            if ((ZRARGS.LEN) <= ((J) + (1))) {
                return CONCATSTRINGS(ERRSTR1, "Unexpected end of string");
            };
            J += 1;
            L = MEM_READBYTE((ZRARGS.PTR) + (J));
            END;
            MEM_PUSHSTRINGPARAM(STR_SUBSTR(RARGS, 1, (J) - (1)));
            RARGS = STR_SUBSTR(RARGS, (J) + (1), (ZRARGS.LEN) - ((J) + (1)));
        } else if (ARGISNUMBER) {
            ARGISFLOAT = FALSE;
            ARGINT = "";
            ARGDEC = "";
            J = 0;
            L = MEM_READBYTE((ZRARGS.PTR) + (J));
            WHILE((L) != (32));
            if ((MEM_READBYTE((ZRARGS.PTR) + (J))) == (46)) {
                if (ARGISFLOAT) {
                    return CONCATSTRINGS(ERRSTR1, "Syntax error '.'");
                };
                ARGISFLOAT = TRUE;
            } else if ((MEM_READBYTE((ZRARGS.PTR) + (J))) == (45)) {
                if ((J) != (0)) {
                    return CONCATSTRINGS(ERRSTR1, "Syntax error '-'");
                };
                ARGINT = "-";
            } else if (((MEM_READBYTE((ZRARGS.PTR) + (J))) < (48)) || ((MEM_READBYTE((ZRARGS.PTR) + (J))) > (57))) {
                return CONCATSTRINGS(CONCATSTRINGS(ERRSTR1, "Syntax error "), STR_SUBSTR(RARGS, J, 1));
            };
            if (ARGISFLOAT) {
                ARGDEC = CONCATSTRINGS(ARGDEC, STR_SUBSTR(RARGS, J, 1));
            } else {
                ARGINT = CONCATSTRINGS(ARGINT, STR_SUBSTR(RARGS, J, 1));
            };
            if ((ZRARGS.LEN) <= ((J) + (1))) {
                BREAK;
            };
            J += 1;
            L = MEM_READBYTE((ZRARGS.PTR) + (J));
            END;
            RARGS = STR_SUBSTR(RARGS, J, (ZRARGS.LEN) - (J));
            ARGINTI = STR_TOINT(ARGINT);
            if (ARGISFLOAT) {
                if ((PTYPE) != (ZPAR_TYPE_FLOAT)) {
                    return CONCATSTRINGS(CONCATSTRINGS(ERRSTR1, "Expected type "), PTYPES);
                };
                ARGDECF = MKF(STR_TOINT(ARGDEC));
                REPEAT(K, STR_LEN(ARGDEC));
                ARGDECF = MULF(ARGDECF, CASTTOINTF(1036831949));
                END;
                ARGINTI = ADDF(MKF(ARGINTI), ARGDECF);
            } else if ((PTYPE) == (ZPAR_TYPE_FLOAT)) {
                ARGINTI = MKF(ARGINTI);
            } else if ((PTYPE) != (ZPAR_TYPE_INT)) {
                if (((ARGINTI) < (0)) || ((ARGINTI) >= (CURRSYMBOLTABLELENGTH))) {
                    return CONCATSTRINGS(ERRSTR1, "Invalid symbol index");
                };
                ISYMB = _^(MEM_GETSYMBOLBYINDEX(ARGINTI));
                if ((((ISYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) != (PTYPE)) && (!((((ISYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_INT)) && ((PTYPE) == (ZPAR_TYPE_FLOAT))))) {
                    return CONCATSTRINGS(CONCATSTRINGS(ERRSTR1, "Expected type "), PTYPES);
                };
                if ((((HLP_STRCMP(ISYMB.NAME, "self")) || (HLP_STRCMP(ISYMB.NAME, "other"))) || (HLP_STRCMP(ISYMB.NAME, "victim"))) || (HLP_STRCMP(ISYMB.NAME, "item"))) {
                    return CONCATSTRINGS(ERRSTR1, "Symbol is not allowed");
                };
                if (!(CALLFUNCTIONCOMMAND_PUSHSYMBOL(ARGINTI))) {
                    return CONCATSTRINGS(CONCATSTRINGS(ERRSTR1, "Don't know how to push type "), PTYPES);
                };
                CONTINUE;
            };
            MEM_PUSHINTPARAM(ARGINTI);
        } else {
            J = 0;
            L = MEM_READBYTE((ZRARGS.PTR) + (J));
            WHILE((L) != (32));
            J += 1;
            L = MEM_READBYTE((ZRARGS.PTR) + (J));
            if ((ZRARGS.LEN) <= (J)) {
                BREAK;
            };
            END;
            ASYMBID = MEM_GETSYMBOLINDEX(STR_PREFIX(RARGS, J));
            if (((ASYMBID) < (0)) || ((ASYMBID) >= (CURRSYMBOLTABLELENGTH))) {
                return CONCATSTRINGS(ERRSTR1, "Invalid symbol name");
            };
            ASYMB = _^(MEM_GETSYMBOLBYINDEX(ASYMBID));
            if ((((ASYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) != (PTYPE)) && (!((((ASYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_INT)) && ((PTYPE) == (ZPAR_TYPE_FLOAT))))) {
                return CONCATSTRINGS(CONCATSTRINGS(ERRSTR1, "Expected type "), PTYPES);
            };
            if ((((HLP_STRCMP(ASYMB.NAME, "self")) || (HLP_STRCMP(ASYMB.NAME, "other"))) || (HLP_STRCMP(ASYMB.NAME, "victim"))) || (HLP_STRCMP(ASYMB.NAME, "item"))) {
                return CONCATSTRINGS(ERRSTR1, "Symbol is not allowed");
            };
            if (!(CALLFUNCTIONCOMMAND_PUSHSYMBOL(ASYMBID))) {
                return CONCATSTRINGS(CONCATSTRINGS(ERRSTR1, "Don't know how to push type "), PTYPES);
            };
            RARGS = STR_SUBSTR(RARGS, J, (ZRARGS.LEN) - (J));
        };
    };
    if ((!(HLP_STRCMP(ARGS, ""))) && (!(HLP_STRCMP(ARGS, " ")))) {
        return "Function does not take arguments";
    };
    if (((RETTYPE) > (ZPAR_TYPE_CLASS)) && ((RETTYPE) < (ZPAR_TYPE_INSTANCE))) {
        return "Return type of function not supported";
    };
    MEM_CALLBYID(FSYMBID);
    if ((RETTYPE) == (ZPAR_TYPE_VOID)) {
        return "return (void)";
    };
    if ((RETTYPE) == (ZPAR_TYPE_STRING)) {
        RESSTR = MEM_POPSTRINGRESULT();
        return CONCATSTRINGS(CONCATSTRINGS("return '", RESSTR), "'");
    };
    if ((RETTYPE) == (ZPAR_TYPE_INT)) {
        RESINT = MEM_POPINTRESULT();
        return CONCATSTRINGS(CONCATSTRINGS("return ", INTTOSTRING(RESINT)), " (int)");
    };
    if ((RETTYPE) == (ZPAR_TYPE_FLOAT)) {
        RESF = MEM_POPINTRESULT();
        return CONCATSTRINGS(CONCATSTRINGS("return ", TOSTRINGF(RESF)), " (float)");
    };
    RESULT = MEM_POPINSTRESULT();
    RPTR = _@(64633);
    return CONCATSTRINGS(CONCATSTRINGS("return *", INTTOSTRING(RPTR)), " (instance)");
}

func void INITCONSOLECOMMANDS() {
    CC_REGISTER(64600, "call ", "");
    CC_REGISTER(64582, "createallitems", "");
    if ((GAME_RUNTIMECONFIG) != (TARGET_SHIPPING)) {
        CC_REGISTER(64483, "invisibility on", "");
        CC_REGISTER(64485, "invisibility off", "");
        CC_REGISTER(64488, "doktor", "");
    };
    CC_REGISTER(64490, "set clockspeed ", "");
    CC_REGISTER(64492, "getdistancetowp ", "");
    if ((GAME_RUNTIMECONFIG) != (TARGET_SHIPPING)) {
        CC_REGISTER(64498, "Myrtany Brzask V1", "");
        CC_REGISTER(64500, "Myrtany Brzask V2", "");
        CC_REGISTER(64518, "lorenzo is gone", "");
        CC_REGISTER(64520, "klasztor", "");
        CC_REGISTER(64524, "dawaj pancerz", "");
    };
    CC_REGISTER(64522, "NpcChangeRoutine ", "");
    CC_REGISTER(64531, "pawel jumper", "");
    CC_REGISTER(64533, "darkest dungeon", "");
    CC_REGISTER(64535, "wieliczka", "");
    CC_REGISTER(64537, "ring of fire", "");
    CC_REGISTER(64539, "fuck go back", "");
    if ((GAME_RUNTIMECONFIG) != (TARGET_SHIPPING)) {
        CC_REGISTER(64541, "Water Mage Trialog", "");
    };
    CC_REGISTER(64543, "Militia Swordsman Tier1", "");
    CC_REGISTER(64547, "Militia Crossbowman Tier1", "");
    CC_REGISTER(64545, "Militia Swordsman Tier2", "");
    CC_REGISTER(64549, "Militia Crossbowman Tier2", "");
    CC_REGISTER(64551, "Araxos Swordsman Tier2", "");
    CC_REGISTER(64553, "Araxos Archer Tier2", "");
    if ((GAME_RUNTIMECONFIG) != (TARGET_SHIPPING)) {
        CC_REGISTER(64502, "InExtremo", "");
        CC_REGISTER(64504, "Knut Is Gone", "");
    };
    CC_REGISTER(64506, "House", "");
    if ((GAME_RUNTIMECONFIG) != (TARGET_SHIPPING)) {
        CC_REGISTER(64508, "Razor", "");
        CC_REGISTER(64510, "Mage", "");
        CC_REGISTER(64512, "BigBen", "");
        CC_REGISTER(64516, "OrcCamps", "");
        CC_REGISTER(64514, "SQ304 CUTSCENE", "");
        CC_REGISTER(64555, "start all quests", "");
        CC_REGISTER(64557, "stop all quests", "");
        CC_REGISTER(64559, "finish all quests", "");
        CC_REGISTER(64561, "volfzacke bridge", "");
        CC_REGISTER(64563, "volfzacke open gate", "");
        CC_REGISTER(64569, "volfzacke warriors", "");
        CC_REGISTER(64565, "city no entry", "");
        CC_REGISTER(64567, "haven no entry", "");
        CC_REGISTER(64496, "start Q602", "");
        CC_REGISTER(64571, "armata", "");
        CC_REGISTER(64573, "kopalnia krolewska", "");
        CC_REGISTER(64575, "send trigger ", "");
        CC_REGISTER(64577, "send untrigger ", "");
        CC_REGISTER(64579, "topgun", "");
    };
}

