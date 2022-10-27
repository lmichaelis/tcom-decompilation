instance NONE_1003_LEONEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LEONEL;
    GUILD = GIL_BDT;
    ID = 0x3eb;
    VOICE = 21;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_1003_LEONEL, 20);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_1003_LEONEL, MALE, HUMHEADFATBALD, FACE_L_LEONEL, BODYTEX_L, 0x8af3);
    MDL_APPLYOVERLAYMDS(NONE_1003_LEONEL, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_1003_LEONEL);
    CREATEINVITEMS(NONE_1003_LEONEL, 0x8592, 3);
    CREATEINVITEMS(NONE_1003_LEONEL, 0x84b4, 3);
    CREATEINVITEMS(NONE_1003_LEONEL, 0x9152, 1);
    B_GIVENPCTALENTS(NONE_1003_LEONEL);
    B_SETFIGHTSKILLS(NONE_1003_LEONEL, 30);
    DAILY_ROUTINE = RTN_START_1003;
}

func void RTN_START_1003() {
    TA_SMOKE_JOINT(7, 0, 22, 0, "PART1_LIGHTHOUSE_BEACH_08");
    TA_SMOKE_JOINT(22, 0, 7, 0, "PART1_LIGHTHOUSE_BEACH_08");
}

func void RTN_TOT_1003() {
    TA_SMOKE_JOINT(7, 0, 22, 0, TOT);
    TA_SMOKE_JOINT(22, 0, 7, 0, TOT);
}
