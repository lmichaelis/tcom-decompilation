instance BDT_13419_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_NONE;
    ID = 0x346b;
    VOICE = 42;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13419_MANHUNTER, 38);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13419_MANHUNTER, MALE, HUMHEADPSIONIC, FACE_B_MANHUNTER06, BODYTEX_B, 0x8a97);
    MDL_APPLYOVERLAYMDS(BDT_13419_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13419_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13419_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13419_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13419;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_13419() {
    TA_STAND_WP(8, 0, 9, 0, "PART17_PATH_175B");
    TA_STAND_WP(9, 0, 8, 0, "PART17_PATH_175B");
}

