instance NONE_6291_MARCO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_MARCO;
    GUILD = GIL_BDT;
    ID = 0x1893;
    VOICE = 70;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_6291_MARCO, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(NONE_6291_MARCO, MALE, HUMHEADPONY, FACE_L_MARCO, BODYTEX_L, 0x8af4);
    MDL_APPLYOVERLAYMDS(NONE_6291_MARCO, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(NONE_6291_MARCO);
    B_SETFIGHTSKILLS(NONE_6291_MARCO, 30);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6291_MARCO);
    CREATEINVITEMS(NONE_6291_MARCO, 0x8592, 2);
    CREATEINVITEMS(NONE_6291_MARCO, 0x84b4, 5);
    CREATEINVITEMS(NONE_6291_MARCO, 0x9155, 1);
    CREATEINVITEMS(NONE_6291_MARCO, 0x9152, 3);
    DAILY_ROUTINE = RTN_START_6291;
}

func void RTN_START_6291() {
    TA_SMOKE_JOINT(7, 0, 22, 0, "PART1_LIGHTHOUSE_BEACH_07");
    TA_SMOKE_JOINT(22, 0, 7, 0, "PART1_LIGHTHOUSE_BEACH_07");
}

func void RTN_TOT_6291() {
    TA_SMOKE_JOINT(7, 0, 22, 0, TOT);
    TA_SMOKE_JOINT(22, 0, 7, 0, TOT);
}

