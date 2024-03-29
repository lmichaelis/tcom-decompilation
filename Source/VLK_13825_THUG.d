instance VLK_13825_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SHADYCHARACTER;
    GUILD = GIL_VLK;
    ID = 13825;
    VOICE = 13;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13825_THUG, 17);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13825_THUG, MALE, HUMHEADFATBALD, FACE_N_PATRON_08, 1, 35412);
    MDL_APPLYOVERLAYMDS(VLK_13825_THUG, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13825_THUG);
    B_GIVENPCTALENTS(VLK_13825_THUG);
    B_SETFIGHTSKILLS(VLK_13825_THUG, 20);
    DAILY_ROUTINE = RTN_START_13825;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_13825() {
    TA_LEAN(7, 50, 20, 40, TOT2);
    TA_LEAN(20, 40, 7, 50, "PARTM3_LEAN_08");
}

