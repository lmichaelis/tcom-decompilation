instance NONE_2009_LENNART_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LENNART;
    GUILD = GIL_MIL;
    ID = 0xc3be;
    VOICE = 17;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    EQUIPITEM(NONE_2009_LENNART_Q602, 0x8503);
    EQUIPITEM(NONE_2009_LENNART_Q602, 0x8652);
    B_SETATTRIBUTESTOLEVEL(NONE_2009_LENNART_Q602, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_2009_LENNART_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_LENNART, BODYTEX_N, 0x8aad);
    MDL_APPLYOVERLAYMDS(NONE_2009_LENNART_Q602, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(NONE_2009_LENNART_Q602);
    B_SETFIGHTSKILLS(NONE_2009_LENNART_Q602, 45);
    MDL_APPLYOVERLAYMDS(NONE_2009_LENNART_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(NONE_2009_LENNART_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(NONE_2009_LENNART_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(NONE_2009_LENNART_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50110;
}

func void RTN_START_50110() {
    TA_STAYSTRAIGHT_Q602(7, 0, 14, 0, "PARTM3_BARRACK_HOUSE1_08");
    TA_STAYSTRAIGHT_Q602(14, 0, 7, 0, "PARTM3_BARRACK_HOUSE1_08");
}

