instance NONE_7000_GHOST(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_PHANTOM;
    GUILD = GIL_KDF;
    ID = 0x1b58;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    AIVAR[71] = TRUE;
    AIVAR[52] = TRUE;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_7000_GHOST, 50);
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    B_SETNPCVISUAL(NONE_7000_GHOST, MALE, HUMHEADBALD, FACE_G_APPARITION01, BODYTEX_G, 0x8b0b);
    MDL_APPLYOVERLAYMDS(NONE_7000_GHOST, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(NONE_7000_GHOST);
    B_SETFIGHTSKILLS(NONE_7000_GHOST, 80);
    AIVAR[51] = MAGIC_ALWAYS;
    DAILY_ROUTINE = RTN_START_7000;
}

func void RTN_START_7000() {
    TA_STAYSTRAIGHT_DIALOGUE(8, 0, 23, 0, "PART6_TOWERGHOST_01");
    TA_STAYSTRAIGHT_DIALOGUE(23, 0, 8, 0, "PART6_TOWERGHOST_01");
}

func void RTN_TOT_7000() {
    TA_STAYSTRAIGHT_DIALOGUE(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT_DIALOGUE(23, 0, 8, 0, TOT);
}

