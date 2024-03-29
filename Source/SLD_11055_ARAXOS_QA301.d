instance SLD_11055_ARAXOS_QA301(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 11055;
    VOICE = 72;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_11055_ARAXOS_QA301, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_11055_ARAXOS_QA301, MALE, HUMHEADFIGHTER, FACE_N_ARAXOS09, 1, 35465);
    MDL_APPLYOVERLAYMDS(SLD_11055_ARAXOS_QA301, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_11055_ARAXOS_QA301);
    B_GIVENPCTALENTS(SLD_11055_ARAXOS_QA301);
    B_SETFIGHTSKILLS(SLD_11055_ARAXOS_QA301, 40);
    DAILY_ROUTINE = RTN_START_11055;
}

func void RTN_START_11055() {
    TA_STAND_EATING(8, 0, 10, 0, "PART12_QA301_SLD_02");
    TA_STAND_EATING(10, 0, 8, 0, "PART12_QA301_SLD_02");
}

func void RTN_QA301_FOLLOW_11055() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "PART12_QA301_SLD_02");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "PART12_QA301_SLD_02");
}

func void RTN_QA301_FOLLOW_V2_11055() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "PART12_MOB_30");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "PART12_MOB_30");
}

func void RTN_QA301_FOLLOW_DIALOGUE_11055() {
    TA_FOLLOW_PLAYER_ONLYDIALOGUE(8, 0, 22, 0, "PART12_MOB_30");
    TA_FOLLOW_PLAYER_ONLYDIALOGUE(22, 0, 8, 0, "PART12_MOB_30");
}

func void RTN_QA301_GUARD_11055() {
    TA_STAND_GUARDING(8, 0, 10, 0, "PART12_PATH_76");
    TA_STAND_GUARDING(10, 0, 8, 0, "PART12_PATH_76");
}

func void RTN_QA301_FINISHJOB_11055() {
    TA_STAND_GUARDING(8, 0, 10, 0, "PART7_QA301_ARX_01");
    TA_STAND_GUARDING(10, 0, 8, 0, "PART7_QA301_ARX_01");
}

func void RTN_TOT_11055() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 10, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(10, 0, 8, 0, TOT);
}

