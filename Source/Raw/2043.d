instance NONE_11238_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SHADYCHARACTER;
    GUILD = GIL_NONE;
    ID = 0x2be6;
    VOICE = 24;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11238_THUG, 10);
    FIGHT_TACTIC = FAI_HUMAN_BAU;
    AIVAR[52] = TRUE;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(NONE_11238_THUG, MALE, HUMHEADFLAILNEU, FACE_N_THUG31, 1, 0x8a56);
    MDL_APPLYOVERLAYMDS(NONE_11238_THUG, HUMANSBAUFIGHTMDS);
    MDL_APPLYOVERLAYMDS(NONE_11238_THUG, HUMANSPOCKETWALKMDS);
    EQUIPITEM(NONE_11238_THUG, 0x84e0);
    B_CREATEAMBIENTINV(NONE_11238_THUG);
    B_GIVENPCTALENTS(NONE_11238_THUG);
    B_SETFIGHTSKILLS(NONE_11238_THUG, 29);
    DAILY_ROUTINE = RTN_START_11238;
}

func void RTN_START_11238() {
    TA_KILLMARVIN(20, 0, 3, 0, "SLUMS_PATH_39");
    TA_KILLMARVIN(3, 0, 20, 0, "SLUMS_PATH_39");
}
