instance NONE_6411_HASMETH_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_HASMETH;
    GUILD = GIL_NONE;
    ID = 50118;
    VOICE = 11;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6411_HASMETH_Q602, 50);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[55] = TRUE;
    EQUIPITEM(NONE_6411_HASMETH_Q602, 33731);
    B_SETNPCVISUAL(NONE_6411_HASMETH_Q602, MALE, HUMHEADBALD, FACE_B_HASMETH, 3, 35430);
    MDL_APPLYOVERLAYMDS(NONE_6411_HASMETH_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6411_HASMETH_Q602);
    B_GIVENPCTALENTS(NONE_6411_HASMETH_Q602);
    B_SETFIGHTSKILLS(NONE_6411_HASMETH_Q602, 60);
    MDL_APPLYOVERLAYMDS(NONE_6411_HASMETH_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_6411_HASMETH_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_6411_HASMETH_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_6411_HASMETH_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50118;
}

func void RTN_START_50118() {
    TA_PLUNDER(8, 0, 11, 0, "PARTE3_HASMETH");
    TA_PLUNDER(11, 0, 8, 0, "PARTE3_HASMETH");
}

func void RTN_FIGHT_50118() {
    TA_KILLMARVIN(8, 0, 11, 0, "PARTE3_HASMETH");
    TA_KILLMARVIN(11, 0, 8, 0, "PARTE3_HASMETH");
}
