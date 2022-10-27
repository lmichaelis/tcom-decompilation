instance VLK_14025_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x36c9;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14025_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14025_GUY, MALE, HUMHEADBALD, FACE_N_PATRON_65, 1, 0x8adf);
    MDL_APPLYOVERLAYMDS(VLK_14025_GUY, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14025_GUY);
    B_GIVENPCTALENTS(VLK_14025_GUY);
    B_SETFIGHTSKILLS(VLK_14025_GUY, 40);
    DAILY_ROUTINE = RTN_START_14025;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_14025() {
    TA_LEAN(7, 0, 22, 0, "HARBOUR_SHIPYARD_25");
    TA_LEAN(22, 0, 7, 0, TOT2);
}

