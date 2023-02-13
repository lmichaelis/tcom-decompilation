instance NONE_6412_THULSA_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_THULSA;
    GUILD = GIL_NONE;
    ID = 50119;
    VOICE = 58;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6412_THULSA_Q602, 50);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[55] = TRUE;
    EQUIPITEM(NONE_6412_THULSA_Q602, 33731);
    B_SETNPCVISUAL(NONE_6412_THULSA_Q602, MALE, HUMHEADTHIEF, FACE_B_THULSA, 3, 35430);
    MDL_APPLYOVERLAYMDS(NONE_6412_THULSA_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6412_THULSA_Q602);
    B_GIVENPCTALENTS(NONE_6412_THULSA_Q602);
    B_SETFIGHTSKILLS(NONE_6412_THULSA_Q602, 60);
    MDL_APPLYOVERLAYMDS(NONE_6412_THULSA_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_6412_THULSA_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_6412_THULSA_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_6412_THULSA_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50119;
}

func void RTN_START_50119() {
    TA_PLUNDER(8, 0, 11, 0, "PARTE3_THULSA");
    TA_PLUNDER(11, 0, 8, 0, "PARTE3_THULSA");
}

func void RTN_FIGHT_50119() {
    TA_KILLMARVIN(8, 0, 11, 0, "PARTE3_THULSA");
    TA_KILLMARVIN(11, 0, 8, 0, "PARTE3_THULSA");
}
