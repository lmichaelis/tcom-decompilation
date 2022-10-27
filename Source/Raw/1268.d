instance NONE_14000_THIEF(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BULLY;
    GUILD = GIL_NONE;
    ID = 0x36b0;
    VOICE = 46;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_14000_THIEF, 22);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14000_THIEF, MALE, HUMHEADBALD, FACE_N_THUG05, 1, 0x8a63);
    MDL_APPLYOVERLAYMDS(NONE_14000_THIEF, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_14000_THIEF);
    CREATEINVITEMS(NONE_14000_THIEF, 0x9346, 2);
    CREATEINVITEMS(NONE_14000_THIEF, 0x9366, 2);
    CREATEINVITEMS(NONE_14000_THIEF, 0x952a, 6);
    B_GIVENPCTALENTS(NONE_14000_THIEF);
    B_SETFIGHTSKILLS(NONE_14000_THIEF, 30);
    DAILY_ROUTINE = RTN_START_14000;
}

func void RTN_START_14000() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, TOT);
}

func void RTN_PQ110_14000() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM2_PATH_139");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM2_PATH_139");
}

