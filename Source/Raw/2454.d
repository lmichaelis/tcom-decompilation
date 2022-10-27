instance NONE_6451_VOLKERGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_BDT;
    ID = 0x1933;
    VOICE = 22;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6451_VOLKERGUARD, 50);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6451_VOLKERGUARD, MALE, HUMHEADPONY, FACE_N_VOLKERGUARD18, 1, 0x8a97);
    MDL_APPLYOVERLAYMDS(NONE_6451_VOLKERGUARD, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6451_VOLKERGUARD);
    B_GIVENPCTALENTS(NONE_6451_VOLKERGUARD);
    B_SETFIGHTSKILLS(NONE_6451_VOLKERGUARD, 60);
    DAILY_ROUTINE = RTN_START_6451;
}

func void RTN_START_6451() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "PART9_PATH_85");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "PART9_PATH_85");
}

func void RTN_FIGHT_6451() {
    TA_RUNTOWP(8, 0, 18, 0, "PART9_PATH_98");
    TA_RUNTOWP(18, 0, 8, 0, "PART9_PATH_98");
}
