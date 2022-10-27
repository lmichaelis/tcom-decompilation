instance BAU_902_SOREN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_NAYLA;
    GUILD = GIL_BAU;
    ID = 902;
    VOICE = 34;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_902_SOREN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_902_SOREN, FEMALE, HUMHEADBABE2, FACE_WN_NAYLA, 5, 0x8b0f);
    MDL_APPLYOVERLAYMDS(BAU_902_SOREN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_902_SOREN);
    B_GIVENPCTALENTS(BAU_902_SOREN);
    B_SETFIGHTSKILLS(BAU_902_SOREN, 30);
    DAILY_ROUTINE = RTN_START_902;
}

func void RTN_START_902() {
    TA_COUNTING(8, 0, 12, 0, "PART15_PATH_204");
    TA_COUNTING(12, 0, 8, 0, "PART15_PATH_204");
}

func void RTN_PLUNDERTORCH_902() {
    TA_PLUNDER(8, 0, 12, 0, "PART15_PATH_204");
    TA_PLUNDER(12, 0, 8, 0, "PART15_PATH_204");
}

func void RTN_GQ001_902() {
    TA_STAYSTRAIGHT(8, 0, 14, 0, "PART15_PATH_203");
    TA_STAYSTRAIGHT(14, 0, 8, 0, "PART15_PATH_203");
}

