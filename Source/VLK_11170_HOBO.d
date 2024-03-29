instance VLK_11170_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 11170;
    VOICE = 28;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11170_HOBO, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_11170_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_11170_HOBO, HUMBODYNAKED0, BODYTEX_N_HOMELESS03, 0, HUMHEADBALD, FACE_N_HOBO23, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11170_HOBO, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_11170_HOBO);
    B_SETFIGHTSKILLS(VLK_11170_HOBO, 35);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11170_HOBO);
    DAILY_ROUTINE = RTN_START_11170;
}

func void RTN_START_11170() {
    TA_SIT_BENCH(12, 0, 16, 0, "SLUMS_HOBO_03");
    TA_SIT_BENCH(16, 0, 12, 0, "SLUMS_HOBO_03");
}

