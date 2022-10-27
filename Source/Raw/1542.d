instance NONE_14001_MANNEQUIN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANNEQUIN;
    GUILD = GIL_NONE;
    ID = 0x36b1;
    VOICE = 0;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_14001_MANNEQUIN, 0);
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    AIVAR[15] = TRUE;
    MDL_SETVISUAL(NONE_14001_MANNEQUIN, MANNEQUINMDS);
    MDL_SETVISUALBODY(NONE_14001_MANNEQUIN, HUMBODYNAKED0, BODYTEX_M, 0, HUMHEADMANNEQUIN, FACE_M_MANNEQUIN, 0, NO_ARMOR);
    B_GIVENPCTALENTS(NONE_14001_MANNEQUIN);
    B_SETFIGHTSKILLS(NONE_14001_MANNEQUIN, 0);
    DAILY_ROUTINE = RTN_TOT_14001;
}

func void RTN_START_14001() {
    TA_STAYSTRAIGHT_DIALOGUE(7, 0, 22, 0, "PARTM5_HEROHOUSE_HERO_MANNEQUIN_05");
    TA_STAYSTRAIGHT_DIALOGUE(22, 0, 7, 0, "PARTM5_HEROHOUSE_HERO_MANNEQUIN_05");
}

func void RTN_TOT_14001() {
    TA_STAYSTRAIGHT_DIALOGUE(7, 0, 22, 0, TOT2);
    TA_STAYSTRAIGHT_DIALOGUE(22, 0, 7, 0, TOT2);
}

