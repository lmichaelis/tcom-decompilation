instance NONE_881_ODGAR_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ODGAR;
    GUILD = GIL_NONE;
    ID = 50109;
    VOICE = 47;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_881_ODGAR_Q602, 30);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(NONE_881_ODGAR_Q602, MALE, HUMHEADFATBALD, FACE_N_ODGAR, BODYTEX_N, 33898);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_881_ODGAR_Q602);
    B_GIVENPCTALENTS(NONE_881_ODGAR_Q602);
    B_SETFIGHTSKILLS(NONE_881_ODGAR_Q602, 50);
    MDL_APPLYOVERLAYMDS(NONE_881_ODGAR_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(NONE_881_ODGAR_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(NONE_881_ODGAR_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(NONE_881_ODGAR_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50109;
}

func void RTN_START_50109() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 23, 0, "PARTM3_PATH_153");
    TA_STAYSTRAIGHT_NOIQ(23, 0, 6, 0, "PARTM3_PATH_153");
}

func void RTN_Q602_FIGHT_50109() {
    TA_SEARCH_ONLY(6, 0, 23, 0, "PARTM3_PATH_153");
    TA_SEARCH_ONLY(23, 0, 6, 0, "PARTM3_PATH_153");
}

func void RTN_Q602_PLUNDER_50109() {
    TA_PLUNDER(6, 0, 23, 0, "PARTE3_ODGAR");
    TA_PLUNDER(23, 0, 6, 0, "PARTE3_ODGAR");
}

