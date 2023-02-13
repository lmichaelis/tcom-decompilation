func string INVISIBILITYONCOMMAND(var string B) {
    FF_APPLY(21104);
    return "Enabled invisibility.";
}

var int STORYHELPERISOPEN;
func string STORYHELPERCOMMAND(var string B) {
    STORYHELPERISOPEN = TRUE;
    AI_PROCESSINFOS(HERO);
    MEM_INSERTKEYEVENT(KEY_F2);
    return "Done.";
}

func string GETDISTANCETOWPCOMMAND(var string B) {
    var int DIST;
    var string WP;
    WP = STR_UPPER(B);
    DIST = NPC_GETDISTTOWP(HERO, WP);
    PRINT(CONCATSTRINGS("Distance: ", INTTOSTRING(DIST)));
    return "";
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

func string INEXTREMOCOMMAND(var string B) {
    KQ404_SPAWNNPC();
    KQ404_PREPAREHOUSE();
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

func string LORENZOISGONECOMMAND(var string B) {
    B_LORENZOISGONE();
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

func string SILVERMINECOMMAND(var string B) {
    CHANGEWORLD_SILVERMINE();
    return "Done";
}

func string MAINLANDCOMMAND(var string B) {
    CHANGEWORLD_MAINLAND();
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

func string STARTALLQUESTS(var string B) {
    B_STARTALLQUESTS();
    return "Done";
}

func string FINISHALLQUESTS(var string B) {
    B_FINISHALLQUESTS();
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

func string HAVEN_NOENTRY(var string B) {
    CUTSCENE_START(92321);
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

func string SENDTRIGGERCOMMAND(var string B) {
    PRINT(CONCATSTRINGS("SendTrigger->", STR_UPPER(B)));
    WLD_SENDTRIGGER(STR_UPPER(B));
    return "done";
}

func string TOPGUNMODECOMMAND(var string B) {
    var int ZCAICAMERA__CHECKUNDERWATERFX;
    FF_APPLY(21105);
    MEMORYPROTECTIONOVERRIDE(ZCAICAMERA__CHECKUNDERWATERFX, 1);
    MEM_WRITEBYTE(ZCAICAMERA__CHECKUNDERWATERFX, ASMINT_OP_RETN);
    return "Done.";
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

